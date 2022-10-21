package com.datbv.booking.domain.reservation.usecase;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.common.exception.ApplicationException;
import com.datbv.booking.common.exception.BusinessError;
import com.datbv.booking.common.exception.Errors;
import com.datbv.booking.common.exception.NotFoundException;
import com.datbv.booking.common.http.HttpStatusCode;
import com.datbv.booking.common.util.CollectionUtil;
import com.datbv.booking.domain.reservation.entity.ReservationEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.repository.command.MutateReservationDataGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryShowDataGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryVirtualSeatDataGateway;
import com.datbv.booking.domain.reservation.usecase.request.ReservationRequest;
import com.datbv.booking.domain.reservation.usecase.response.ReservationResponse;
import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.usecase.message.CreateUserRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.time.ZonedDateTime;
import java.util.stream.Collectors;

@Slf4j
@RequiredArgsConstructor
public class ReserveBookingUseCase {

    private final QueryShowDataGateway showQuery;
    private final QueryVirtualSeatDataGateway virtualSeatQuery;
    private final MutateReservationDataGateway reservationMutation;

    private final UserServiceAdapter userServiceAdapter;
    private final MovieServiceAdapter movieServiceAdapter;
    private final TheaterServiceAdapter theaterServiceAdapter;

    public ReservationResponse reserveBooking(final ReservationRequest request) {

        if (CollectionUtil.isEmpty(request.getSeats())) {
            throw new ApplicationException(Errors.INVALID_PARAMETERS);
        }

        val show = validateShow(request.getShowId());
        val user = validateUser(request.getUser(), request.isCreateUserIfNotExist());
        val movie = movieServiceAdapter.getMovieById(show.getMovieId())
                .orElseThrow(() -> new ApplicationException(Errors.DATA_INCONSISTENCY));
        val room = theaterServiceAdapter.getRoomById(show.getRoomId())
                .orElseThrow(() -> new ApplicationException(Errors.DATA_INCONSISTENCY));
        val theater = theaterServiceAdapter.getTheaterById(show.getTheaterId())
                .orElseThrow(() -> new ApplicationException(Errors.DATA_INCONSISTENCY));

        val virtualSeatIds = request.getSeats().stream()
                .map(ReservationRequest.VirtualSeat::getId)
                .collect(Collectors.toSet());

        val virtualSeats = virtualSeatQuery.findByIds(virtualSeatIds);

        if (virtualSeats.stream().anyMatch(seat -> seat.getShowId() != request.getShowId())) {
            throw new ApplicationException(new BusinessError(400,
                    "There is some seats that doesn't belong to this show",
                    HttpStatusCode.BAD_REQUEST));
        }

        val availableSeatCount = virtualSeats.stream().filter(VirtualSeatEntity::isAvailable).count();
        if (availableSeatCount != virtualSeats.size()) {
            throw new ApplicationException(new BusinessError(400,
                    "There is some unavailable seats, please check again",
                    HttpStatusCode.BAD_REQUEST));
        }

        val reservation = ReservationEntity.builder()
                .userId(user.getId())
                .show(show)
                .bookedTime(ZonedDateTime.now())
                .virtualSeats(virtualSeats)
                .build();

        reservationMutation.createReservation(reservation);
        return ReservationResponse.builder()
                .id(reservation.getId())
                .show(ReservationResponse.Show.builder()
                        .description(show.getDescription())
                        .type(show.getType())
                        .startTime(show.getStartTime())
                        .endTime(show.getEndTime())
                        .build())
                .user(ReservationResponse.User.builder()
                        .phoneNumber(user.getPhoneNumber())
                        .fullName(user.getFullName())
                        .email(user.getEmail())
                        .build())
                .movie(ReservationResponse.Movie.builder()
                        .name(movie.getName())
                        .duration(movie.getDuration())
                        .build())
                .room(ReservationResponse.Room.builder()
                        .name(room.getName())
                        .build())
                .theater(ReservationResponse.Theater.builder()
                        .name(theater.getName())
                        .build())
                .seats(virtualSeats.stream().map(seat -> ReservationResponse.VirtualSeat.builder()
                        .seatCode(seat.getSeatCode())
                        .build()).toList())
                .build();
    }

    private ShowEntity validateShow(final long showId) {
        val show = showQuery.findById(showId)
                .orElseThrow(() -> new NotFoundException("Show not found by id:", showId));

        val now = ZonedDateTime.now();
        val startTime = show.getStartTime();
        if (now.plusMinutes(15).isAfter(startTime)) {
            throw new ApplicationException(new BusinessError(400,
                    "Reserve booking is only available before starting time 15 minutes",
                    HttpStatusCode.BAD_REQUEST));
        }
        return show;
    }

    private UserEntity validateUser(final ReservationRequest.User user, final boolean createIfNotExist) {
        val userOpt = userServiceAdapter.getUserByPhoneNumber(user.getPhoneNumber());
        if (userOpt.isPresent()) {
            return userOpt.get();
        }

        if (!createIfNotExist) {
            throw new ApplicationException(new BusinessError(400, "User does not exist", HttpStatusCode.BAD_REQUEST));
        }

        val createUserRequest = CreateUserRequest.builder()
                .phoneNumber(user.getPhoneNumber())
                .fullName(user.getFullName())
                .email(user.getEmail())
                .build();
        return userServiceAdapter.createUser(createUserRequest);
    }

}

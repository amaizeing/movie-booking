package com.datbv.booking.domain.reservation.usecase.preparatory;

import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.common.exception.ApplicationException;
import com.datbv.booking.common.exception.BusinessError;
import com.datbv.booking.common.exception.Errors;
import com.datbv.booking.common.exception.NotFoundException;
import com.datbv.booking.common.http.HttpStatusCode;
import com.datbv.booking.common.util.CollectionUtil;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.repository.query.QueryShowGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryVirtualSeatGateway;
import com.datbv.booking.domain.reservation.usecase.request.ReservationRequest;
import com.datbv.booking.domain.reservation.usecase.preparatory.output.ReserveBookingData;
import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.usecase.message.CreateUserRequest;
import lombok.RequiredArgsConstructor;
import lombok.val;

import java.time.ZonedDateTime;
import java.util.stream.Collectors;

@RequiredArgsConstructor
public class ReserveBookingPreparatory implements Preparatory<ReservationRequest, ReserveBookingData> {

    private final QueryShowGateway showQuery;
    private final QueryVirtualSeatGateway virtualSeatQuery;

    private final UserServiceAdapter userServiceAdapter;

    @Override
    public ReserveBookingData prepare(final ReservationRequest request) {
        if (CollectionUtil.isEmpty(request.getSeats())) {
            throw new ApplicationException(Errors.INVALID_PARAMETERS);
        }

        val show = validateShow(request.getShowId());
        val user = validateUser(request.getUser(), request.isCreateUserIfNotExist());


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

        return ReserveBookingData.builder()
                .show(show)
                .user(user)
                .virtualSeats(virtualSeats)
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
        val userEntity = userServiceAdapter.getUserByPhoneNumber(user.getPhoneNumber());
        if (userEntity != null) {
            return userEntity;
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

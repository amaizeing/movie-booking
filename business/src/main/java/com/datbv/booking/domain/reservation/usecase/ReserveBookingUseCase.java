package com.datbv.booking.domain.reservation.usecase;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.domain.reservation.entity.ReservationEntity;
import com.datbv.booking.domain.reservation.mapper.ReservationResponseMapper;
import com.datbv.booking.domain.reservation.repository.command.MutateReservationGateway;
import com.datbv.booking.domain.reservation.usecase.preparatory.Preparatory;
import com.datbv.booking.domain.reservation.usecase.preparatory.output.ReserveBookingData;
import com.datbv.booking.domain.reservation.usecase.request.ReservationRequest;
import com.datbv.booking.domain.reservation.usecase.response.ReservationResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.time.ZonedDateTime;

@Slf4j
@RequiredArgsConstructor
public class ReserveBookingUseCase {

    private final MutateReservationGateway reservationMutation;

    private final MovieServiceAdapter movieServiceAdapter;
    private final TheaterServiceAdapter theaterServiceAdapter;

    private final Preparatory<ReservationRequest, ReserveBookingData> preparatory;

    private final ReservationResponseMapper mapper;

    public ReservationResponse reserveBooking(final ReservationRequest request) {

        val data = preparatory.prepare(request);

        val show = data.show();
        val user = data.user();
        val virtualSeats = data.virtualSeats();

        val movie = movieServiceAdapter.getMovieById(show.getMovieId());
        val room = theaterServiceAdapter.getRoomById(show.getRoomId());
        val theater = theaterServiceAdapter.getTheaterById(show.getTheaterId());

        var reservation = ReservationEntity.builder()
                .userId(user.getId())
                .show(show)
                .bookedTime(ZonedDateTime.now())
                .virtualSeats(virtualSeats)
                .build();

        reservation = reservationMutation.createReservation(reservation);
        return ReservationResponse.builder()
                .id(reservation.getId())
                .show(mapper.mapToShow(show))
                .user(mapper.mapToUser(user))
                .movie(mapper.mapToMovie(movie))
                .room(mapper.mapToRoom(room))
                .theater(mapper.mapToTheater(theater))
                .seats(mapper.mapToVirtualSeats(virtualSeats))
                .bookedTime(reservation.getBookedTime())
                .build();
    }

}

package com.datbv.booking.domain.reservation.usecase;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.ReservationEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.repository.query.QueryReservationDataGateway;
import com.datbv.booking.domain.reservation.usecase.request.ReservationFilter;
import com.datbv.booking.domain.reservation.usecase.response.ReservationResponse;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import lombok.RequiredArgsConstructor;
import lombok.val;

import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

@RequiredArgsConstructor
public class GetReservationUseCase {

    private final QueryReservationDataGateway reservationQuery;
    private final MovieServiceAdapter movieServiceAdapter;
    private final TheaterServiceAdapter theaterServiceAdapter;

    public List<ReservationResponse> getReservationsByFilter(final ReservationFilter filter) {

        val reservations = reservationQuery.findReservationsByFilter(filter);

        val movieIds = reservations.stream()
                .map(ReservationEntity::getShow)
                .map(ShowEntity::getMovieId)
                .toList();
        val idToMovie = movieServiceAdapter.getMoviesByIds(movieIds)
                .stream()
                .collect(Collectors.toMap(MovieEntity::getId, Function.identity()));

        val roomIds = reservations.stream()
                .map(ReservationEntity::getShow)
                .map(ShowEntity::getRoomId)
                .toList();
        val idToRoom = theaterServiceAdapter.getRoomsByIds(roomIds)
                .stream()
                .collect(Collectors.toMap(RoomEntity::getId, Function.identity()));

        val theaterIds = idToRoom.values().stream()
                .map(RoomEntity::getTheaterId)
                .distinct()
                .toList();
        val idToTheater = theaterServiceAdapter.getTheatersByIds(theaterIds)
                .stream()
                .collect(Collectors.toMap(TheaterEntity::getId, Function.identity()));

        return reservations.stream()
                .map(reservation -> ReservationResponse.builder()
                        .id(reservation.getId())
                        .show(ReservationResponse.Show.of(reservation.getShow()))
                        .movie(ReservationResponse.Movie.of(idToMovie.get(reservation.getShow().getMovieId())))
                        .room(ReservationResponse.Room.of(idToRoom.get(reservation.getShow().getRoomId())))
                        .theater(ReservationResponse.Theater.of(idToTheater.get(reservation.getShow().getTheaterId())))
                        .seats(ReservationResponse.VirtualSeat.of(reservation.getVirtualSeats()))
                        .bookedTime(reservation.getBookedTime())
                        .build())
                .toList();
    }

}

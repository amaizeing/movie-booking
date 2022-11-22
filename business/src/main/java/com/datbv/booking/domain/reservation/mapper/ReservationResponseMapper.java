package com.datbv.booking.domain.reservation.mapper;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.usecase.response.ReservationResponse;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.user.entity.UserEntity;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.Collection;
import java.util.List;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ReservationResponseMapper {

    ReservationResponse.Show mapToShow(final ShowEntity show);

    ReservationResponse.User mapToUser(final UserEntity user);

    ReservationResponse.Movie mapToMovie(final MovieEntity movie);

    ReservationResponse.Room mapToRoom(final RoomEntity room);

    ReservationResponse.Theater mapToTheater(final TheaterEntity room);

    ReservationResponse.VirtualSeat mapToVirtualSeat(final VirtualSeatEntity seat);

    List<ReservationResponse.VirtualSeat> mapToVirtualSeats(final Collection<VirtualSeatEntity> seats);

}

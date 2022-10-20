package com.datbv.booking.domain.reservation.web.mapper;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.usecase.response.ShowAggregate;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShow;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShow.VirtualSeat;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import java.util.Collection;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface WebShowMapper {

    default WebShow mapToWebShow(final ShowAggregate showAggregate) {
        return WebShow.builder()
                .movie(mapToMovie(showAggregate.movie()))
                .theater(mapToTheater(showAggregate.theater()))
                .room(mapToRoom(showAggregate.room()))
                .type(showAggregate.type())
                .startTime(showAggregate.startTime())
                .endTime(showAggregate.endTime())
                .seats(mapToVirtualSeats(showAggregate.seats()))
                .build();
    }

    WebShow.VirtualSeat mapToVirtualSeat(final VirtualSeatEntity seat);

    List<VirtualSeat> mapToVirtualSeats(final Collection<VirtualSeatEntity> seats);

    WebShow.Theater mapToTheater(final TheaterEntity theater);

    WebShow.Room mapToRoom(final RoomEntity room);

    @Mapping(target = "durationInSeconds", expression = "java(movie.getDuration().toSeconds())")
    WebShow.Movie mapToMovie(final MovieEntity movie);
}

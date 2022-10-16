package com.datbv.booking.domain.reservation.usecase.response;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import java.time.ZonedDateTime;
import java.util.List;
import lombok.Builder;

@Builder
public record ShowAggregate(
        long id,
        TheaterEntity theater,
        RoomEntity room,
        MovieEntity movie,
        List<VirtualSeatEntity> seats,
        String description,
        ShowEntity.Type type,
        ZonedDateTime startTime,
        ZonedDateTime endTime) {


}

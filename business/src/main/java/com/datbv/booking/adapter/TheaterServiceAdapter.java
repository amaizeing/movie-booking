package com.datbv.booking.adapter;

import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

public interface TheaterServiceAdapter {

    Optional<TheaterEntity> getTheaterById(final long theaterId);

    List<TheaterEntity> getTheatersByIds(final Collection<Long> ids);

    Optional<RoomEntity> getRoomById(final long id);

    List<RoomEntity> getRoomsByIds(final Collection<Long> ids);
}

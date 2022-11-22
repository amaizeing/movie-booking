package com.datbv.booking.adapter;

import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;

import java.util.Collection;
import java.util.List;

public interface TheaterServiceAdapter {

    TheaterEntity getTheaterById(final long theaterId);

    List<TheaterEntity> getTheatersByIds(final Collection<Long> ids);

    RoomEntity getRoomById(final long id);

    List<RoomEntity> getRoomsByIds(final Collection<Long> ids);
}

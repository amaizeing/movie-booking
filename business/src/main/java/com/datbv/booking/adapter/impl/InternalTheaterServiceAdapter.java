package com.datbv.booking.adapter.impl;

import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.common.util.CollectionUtil;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.theater.usecase.GetRoomUseCase;
import com.datbv.booking.domain.theater.usecase.GetTheaterUseCase;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
public class InternalTheaterServiceAdapter implements TheaterServiceAdapter {

    private final GetRoomUseCase getRoomUseCase;
    private final GetTheaterUseCase getTheaterUseCase;

    @Override
    public Optional<TheaterEntity> getTheaterById(final long id) {
        return getTheaterUseCase.getTheaterById(id);
    }

    @Override
    public List<TheaterEntity> getTheatersByIds(final Collection<Long> ids) {
        return getTheaterUseCase.getTheatersByIds(ids);
    }

    @Override
    public Optional<RoomEntity> getRoomById(final long id) {
        return getRoomUseCase.getRoomById(id);
    }

    @Override
    public List<RoomEntity> getRoomsByIds(final Collection<Long> ids) {
        if (CollectionUtil.isEmpty(ids)) {
            return List.of();
        }
        return getRoomUseCase.getRoomsByIds(ids);
    }

}

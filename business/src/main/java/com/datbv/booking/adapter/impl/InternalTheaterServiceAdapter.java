package com.datbv.booking.adapter.impl;

import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.common.util.CollectionUtil;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.theater.usecase.QueryRoomUseCase;
import com.datbv.booking.domain.theater.usecase.QueryTheaterUseCase;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
public class InternalTheaterServiceAdapter implements TheaterServiceAdapter {

    private final QueryRoomUseCase queryRoomUseCase;
    private final QueryTheaterUseCase queryTheaterUseCase;

    @Override
    public Optional<TheaterEntity> getTheaterById(final long id) {
        return queryTheaterUseCase.getTheaterById(id);
    }

    @Override
    public List<TheaterEntity> getTheatersByIds(final Collection<Long> ids) {
        return queryTheaterUseCase.getTheatersByIds(ids);
    }

    @Override
    public Optional<RoomEntity> getRoomById(final long id) {
        return queryRoomUseCase.getRoomById(id);
    }

    @Override
    public List<RoomEntity> getRoomsByIds(final Collection<Long> ids) {
        if (CollectionUtil.isEmpty(ids)) {
            return List.of();
        }
        return queryRoomUseCase.getRoomsByIds(ids);
    }

}

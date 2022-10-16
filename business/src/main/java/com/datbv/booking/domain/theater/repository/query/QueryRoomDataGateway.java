package com.datbv.booking.domain.theater.repository.query;

import com.datbv.booking.domain.theater.entity.RoomEntity;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

public interface QueryRoomDataGateway {

    Optional<RoomEntity> findById(long roomId);

    List<RoomEntity> findByIds(final Collection<Long> ids);

}

package com.datbv.booking.domain.theater.repository.query;

import com.datbv.booking.domain.theater.entity.PhysicalSeatEntity;

import java.util.List;

public interface QuerySeatDataGateway {

    List<PhysicalSeatEntity> findByRoomId(long roomId);

}

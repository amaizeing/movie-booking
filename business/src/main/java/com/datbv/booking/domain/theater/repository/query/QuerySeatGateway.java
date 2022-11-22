package com.datbv.booking.domain.theater.repository.query;

import com.datbv.booking.domain.theater.entity.PhysicalSeatEntity;

import java.util.List;

public interface QuerySeatGateway {

    List<PhysicalSeatEntity> findByRoomId(long roomId);

}

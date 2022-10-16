package com.datbv.booking.domain.reservation.repository.query;

import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;

import java.util.Collection;
import java.util.List;
import java.util.Map;

public interface QueryVirtualSeatDataGateway {

    Map<Long, List<VirtualSeatEntity>> findByShowIds(final Collection<Long> showIds);
}

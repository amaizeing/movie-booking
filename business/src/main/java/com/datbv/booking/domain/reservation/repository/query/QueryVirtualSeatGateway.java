package com.datbv.booking.domain.reservation.repository.query;

import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public interface QueryVirtualSeatGateway {

    List<VirtualSeatEntity> findByIds(final Collection<Long> ids);

    List<VirtualSeatEntity> findByShowId(final long showId);

    Map<Long, List<VirtualSeatEntity>> findByShowIds(final Collection<Long> showIds);

}

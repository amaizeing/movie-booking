package com.datbv.booking.domain.reservation.persistence.gateway;

import com.datbv.booking.common.util.CollectionUtil;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.reservation.persistence.repository.JpaVirtualSeatRepository;
import com.datbv.booking.domain.reservation.repository.query.QueryVirtualSeatDataGateway;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class VirtualSeatDataGateway implements QueryVirtualSeatDataGateway {

    private final JpaVirtualSeatRepository virtualSeatRepository;

    @Override
    public Map<Long, List<VirtualSeatEntity>> findByShowIds(final Collection<Long> showIds) {
        if (CollectionUtil.isEmpty(showIds)) {
            return Map.of();
        }

        val seats = virtualSeatRepository.findByIds(showIds);
        return seats.stream().collect(Collectors.groupingBy(VirtualSeatEntity::getShowId));
    }

}

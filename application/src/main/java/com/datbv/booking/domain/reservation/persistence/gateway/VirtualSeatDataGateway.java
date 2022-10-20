package com.datbv.booking.domain.reservation.persistence.gateway;

import com.datbv.booking.common.util.CollectionUtil;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.reservation.persistence.entity.JpaVirtualSeat;
import com.datbv.booking.domain.reservation.persistence.mapper.PersistenceVirtualSeatMapper;
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

    private final PersistenceVirtualSeatMapper virtualSeatMapper;

    @Override
    public List<VirtualSeatEntity> findByIds(final Collection<Long> ids) {
        if (CollectionUtil.isEmpty(ids)) {
            return List.of();
        }
        return virtualSeatMapper.mapToVirtualSeatEntities(virtualSeatRepository.findByIds(ids));
    }

    @Override
    public List<VirtualSeatEntity> findByShowId(long showId) {
        return virtualSeatMapper.mapToVirtualSeatEntities(virtualSeatRepository.findByShowId(showId));
    }

    @Override
    public Map<Long, List<VirtualSeatEntity>> findByShowIds(final Collection<Long> showIds) {
        if (CollectionUtil.isEmpty(showIds)) {
            return Map.of();
        }

        val seats = virtualSeatRepository.findByShowIds(showIds);
        return seats.stream().collect(Collectors.groupingBy(JpaVirtualSeat::getShowId,
                Collectors.mapping(virtualSeatMapper::mapToVirtualSeatEntity,
                        Collectors.toList())));
    }

}

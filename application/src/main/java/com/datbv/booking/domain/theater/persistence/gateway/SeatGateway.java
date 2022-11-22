package com.datbv.booking.domain.theater.persistence.gateway;

import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.theater.entity.PhysicalSeatEntity;
import com.datbv.booking.domain.theater.persistence.mapper.PersistenceSeatMapper;
import com.datbv.booking.domain.theater.persistence.repo.JpaSeatRepository;
import com.datbv.booking.domain.theater.repository.query.QuerySeatGateway;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.util.List;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class SeatGateway implements QuerySeatGateway {

    private final JpaSeatRepository seatRepository;

    private final PersistenceSeatMapper seatMapper;

    @Override
    public List<PhysicalSeatEntity> findByRoomId(final long roomId) {
        val jpaSeats = seatRepository.findByRoomId(roomId);
        return seatMapper.mapToSeatEntities(jpaSeats);
    }

}

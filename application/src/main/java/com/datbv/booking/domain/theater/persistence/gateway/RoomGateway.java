package com.datbv.booking.domain.theater.persistence.gateway;

import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.persistence.mapper.PersistenceRoomMapper;
import com.datbv.booking.domain.theater.persistence.repo.JpaRoomRepository;
import com.datbv.booking.domain.theater.repository.query.QueryRoomGateway;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class RoomGateway implements QueryRoomGateway {

    private final JpaRoomRepository roomRepository;

    private final PersistenceRoomMapper roomMapper;

    @Override
    public Optional<RoomEntity> findById(final long roomId) {
        return roomRepository.findById(roomId)
                .map(roomMapper::mapToRoomEntity);
    }

    @Override
    public List<RoomEntity> findByIds(final Collection<Long> ids) {
        val jpaRooms = roomRepository.findByIds(ids);
        return roomMapper.mapToRoomEntities(jpaRooms);
    }

}

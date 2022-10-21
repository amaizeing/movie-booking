package com.datbv.booking.domain.theater.usecase;

import com.datbv.booking.domain.theater.dto.RoomAggregate;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.repository.query.QueryRoomDataGateway;
import com.datbv.booking.domain.theater.repository.query.QuerySeatDataGateway;
import lombok.RequiredArgsConstructor;
import lombok.val;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
public class GetRoomUseCase {

    private final QuerySeatDataGateway seatQuery;
    private final QueryRoomDataGateway roomQuery;

    public Optional<RoomAggregate> getRoomWithAllSeatsById(final long roomId) {
        val roomOpt = roomQuery.findById(roomId);
        if (roomOpt.isEmpty()) {
            return Optional.empty();
        }

        val roomEntity = roomOpt.get();
        val seatEntities = seatQuery.findByRoomId(roomId);

        val roomAggregate = RoomAggregate.builder()
                .room(roomEntity)
                .seats(seatEntities)
                .build();

        return Optional.of(roomAggregate);
    }

    public Optional<RoomEntity> getRoomById(final long roomId) {
        return roomQuery.findById(roomId);
    }

    public List<RoomEntity> getRoomsByIds(final Collection<Long> ids) {
        return roomQuery.findByIds(ids);
    }

}

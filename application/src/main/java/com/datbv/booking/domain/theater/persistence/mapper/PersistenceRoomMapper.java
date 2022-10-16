package com.datbv.booking.domain.theater.persistence.mapper;

import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.persistence.entity.JpaRoom;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.Collection;
import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface PersistenceRoomMapper {

    RoomEntity mapToRoomEntity(final JpaRoom jpaRoom);

    List<RoomEntity> mapToRoomEntities(final Collection<JpaRoom> jpaRooms);
}

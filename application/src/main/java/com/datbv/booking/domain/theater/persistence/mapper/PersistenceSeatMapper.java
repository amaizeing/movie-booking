package com.datbv.booking.domain.theater.persistence.mapper;

import com.datbv.booking.domain.theater.entity.PhysicalSeatEntity;
import com.datbv.booking.domain.theater.persistence.entity.JpaPhysicalSeat;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.Collection;
import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface PersistenceSeatMapper {

    PhysicalSeatEntity mapToSeatEntity(final JpaPhysicalSeat jpaPhysicalSeat);

    List<PhysicalSeatEntity> mapToSeatEntities(final Collection<JpaPhysicalSeat> jpaPhysicalSeats);
}

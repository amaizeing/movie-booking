package com.datbv.booking.domain.reservation.persistence.mapper;

import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.persistence.entity.JpaVirtualSeat;
import java.util.Collection;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface PersistenceVirtualSeatMapper {

    VirtualSeatEntity mapToVirtualSeatEntity(final JpaVirtualSeat seat);

    List<VirtualSeatEntity> mapToVirtualSeatEntities(final Collection<JpaVirtualSeat> seats);
}

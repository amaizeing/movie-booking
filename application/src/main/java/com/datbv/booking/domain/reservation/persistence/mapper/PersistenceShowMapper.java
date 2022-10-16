package com.datbv.booking.domain.reservation.persistence.mapper;

import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.persistence.entity.JpaShow;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.Collection;
import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface PersistenceShowMapper {

    ShowEntity mapToShowEntity(final JpaShow show);

    List<ShowEntity> mapToShowEntities(final Collection<JpaShow> shows);

}

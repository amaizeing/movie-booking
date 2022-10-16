package com.datbv.booking.domain.theater.persistence.mapper;

import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.theater.persistence.entity.JpaTheater;
import java.util.Collection;
import java.util.List;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface PersistenceTheaterMapper {

    TheaterEntity mapToTheaterEntity(final JpaTheater theater);

    List<TheaterEntity> mapToTheaterEntities(final Collection<JpaTheater> theaters);
}

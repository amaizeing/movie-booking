package com.datbv.booking.domain.user.persistance.mapper;

import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.persistance.entity.JpaUser;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface PersistenceUserMapper {

    JpaUser mapToJpaUser(final UserEntity userEntity);

    UserEntity mapToUserEntity(final JpaUser jpaUser);
}

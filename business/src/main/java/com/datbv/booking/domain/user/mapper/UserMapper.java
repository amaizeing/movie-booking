package com.datbv.booking.domain.user.mapper;


import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.usecase.message.ValidateUserRequest;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface UserMapper {

    UserEntity mapUserToUserEntity(final ValidateUserRequest.User user);
}

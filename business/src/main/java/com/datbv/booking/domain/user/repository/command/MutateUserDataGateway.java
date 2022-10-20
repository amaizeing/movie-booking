package com.datbv.booking.domain.user.repository.command;

import com.datbv.booking.domain.user.entity.UserEntity;

public interface MutateUserDataGateway {

    UserEntity createUser(final UserEntity userEntity);
}

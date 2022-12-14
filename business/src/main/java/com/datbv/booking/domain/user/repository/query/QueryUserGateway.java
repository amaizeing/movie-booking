package com.datbv.booking.domain.user.repository.query;

import com.datbv.booking.domain.user.entity.UserEntity;

import java.util.Optional;

public interface QueryUserGateway {

    Optional<UserEntity> findUserByPhoneNumber(final String phoneNumber);
}

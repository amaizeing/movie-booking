package com.datbv.booking.adapter;

import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.usecase.message.CreateUserRequest;

public interface UserServiceAdapter {

    UserEntity getUserByPhoneNumber(final String phoneNumber);

    UserEntity createUser(final CreateUserRequest request);

}

package com.datbv.booking.adapter.impl;

import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.usecase.CreateUserUserCase;
import com.datbv.booking.domain.user.usecase.GetUserUseCase;
import com.datbv.booking.domain.user.usecase.message.CreateUserRequest;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class InternalUserServiceAdapter implements UserServiceAdapter {

    private final GetUserUseCase getUserUseCase;
    private final CreateUserUserCase createUserUserCase;

    @Override
    public UserEntity getUserByPhoneNumber(final String phoneNumber) {
        return getUserUseCase.getUserByPhoneNumber(phoneNumber).orElse(null);
    }

    @Override
    public UserEntity createUser(final CreateUserRequest request) {
        return createUserUserCase.createUser(request);
    }

}

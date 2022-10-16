package com.datbv.booking.adapter.impl;

import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.domain.user.usecase.message.ValidateUserResult;
import com.datbv.booking.domain.user.usecase.ValidateUserUseCase;
import com.datbv.booking.domain.user.usecase.message.ValidateUserRequest;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class InternalUserServiceAdapter implements UserServiceAdapter {

    private final ValidateUserUseCase validateUserUseCase;

    @Override
    public ValidateUserResult validateUser(final ValidateUserRequest request) {
        return validateUserUseCase.validate(request);
    }

}

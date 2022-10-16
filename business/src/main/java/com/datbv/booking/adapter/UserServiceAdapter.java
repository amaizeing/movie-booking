package com.datbv.booking.adapter;

import com.datbv.booking.domain.user.usecase.message.ValidateUserResult;
import com.datbv.booking.domain.user.usecase.message.ValidateUserRequest;

public interface UserServiceAdapter {

    ValidateUserResult validateUser(final ValidateUserRequest request);

}

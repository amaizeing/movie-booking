package com.datbv.booking.domain.user.usecase.message;

import com.datbv.booking.common.exception.ApplicationException;

public record ValidateUserResult(
        boolean succeed,
        Exception reason) {

    public static ValidateUserResult ok() {
        return new ValidateUserResult(true, null);
    }

    public static ValidateUserResult error(ApplicationException exception) {
        return new ValidateUserResult(false, exception);
    }

}

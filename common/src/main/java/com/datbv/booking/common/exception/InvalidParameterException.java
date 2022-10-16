package com.datbv.booking.common.exception;

import org.apache.commons.lang3.StringUtils;

public class InvalidParameterException extends ApplicationException {

    public InvalidParameterException(final Object... objects) {
        super(Errors.INVALID_PARAMETERS, StringUtils.joinWith(" ", objects));
    }

}

package com.datbv.booking.common.exception;


import org.apache.commons.lang3.StringUtils;

public class NotFoundException extends ApplicationException {

    public NotFoundException(final Object... objects) {
        super(Errors.NOT_FOUND_ERROR, StringUtils.joinWith(" ", objects));
    }

}

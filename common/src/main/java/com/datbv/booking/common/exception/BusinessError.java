package com.datbv.booking.common.exception;

import com.datbv.booking.common.http.HttpStatusCode;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.experimental.Accessors;

@Getter
@Accessors(fluent = true)
@AllArgsConstructor
public class BusinessError {


    private int code;
    private String message;
    private HttpStatusCode httpStatusCode;

}

package com.datbv.booking.common.exception;

import com.datbv.booking.common.http.HttpStatusCode;
import lombok.Getter;

@Getter
public class ApplicationException extends RuntimeException   {

    private final BusinessError errorCode;

    public ApplicationException(BusinessError errorCode) {
        super(errorCode.message());
        this.errorCode = errorCode;
    }

    public ApplicationException(BusinessError errorCode, String message) {
        super(message);
        this.errorCode = errorCode;
    }

    public ApplicationException(BusinessError error, String message, Throwable cause) {
        super(message, cause);
        this.errorCode = error;
    }

    public HttpStatusCode httpStatusCode() {
        return errorCode.httpStatusCode();
    }

}

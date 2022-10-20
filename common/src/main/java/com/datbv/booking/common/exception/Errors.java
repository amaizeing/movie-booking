package com.datbv.booking.common.exception;


import com.datbv.booking.common.http.HttpStatusCode;
import lombok.experimental.UtilityClass;

@UtilityClass
public class Errors {

    public final BusinessError INVALID_PARAMETERS
            = new BusinessError(400, "Invalid parameters", HttpStatusCode.BAD_REQUEST);

    public final BusinessError FORBIDDEN_ERROR
            = new BusinessError(403, "Permission denied", HttpStatusCode.FORBIDDEN);

    public final BusinessError NOT_FOUND_ERROR
            = new BusinessError(404, "Resource is not found", HttpStatusCode.NOT_FOUND);

    public final BusinessError INTERNAL_SERVER_ERROR
            = new BusinessError(500, "Internal server error", HttpStatusCode.INTERNAL_SERVER_ERROR);

    public final BusinessError DATA_INCONSISTENCY
            = new BusinessError(500, "Data inconsistency", HttpStatusCode.INTERNAL_SERVER_ERROR);

}

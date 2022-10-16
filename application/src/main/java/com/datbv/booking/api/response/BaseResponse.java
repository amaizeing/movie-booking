package com.datbv.booking.api.response;

import com.datbv.booking.common.http.HttpStatusCode;
import com.datbv.booking.common.exception.ApplicationException;
import com.datbv.booking.common.exception.BusinessError;
import com.datbv.booking.common.model.PageData;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import lombok.experimental.Accessors;
import lombok.extern.slf4j.Slf4j;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Getter
@Setter(AccessLevel.MODULE)
@Accessors(chain = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class BaseResponse<T> {

    private T data;
    private Metadata metadata;

    BaseResponse() {
        this.data = null;
        this.metadata = new Metadata();
    }

    public static <T> BaseResponse<T> ofSucceeded() {
        val response = new BaseResponse<T>();
        response.metadata.code = HttpStatusCode.OK.getValue();
        return response;
    }

    public static <T> BaseResponse<T> ofSucceeded(T data) {
        val response = new BaseResponse<T>();
        response.data = data;
        response.metadata.code = HttpStatusCode.OK.getValue();
        response.metadata.message = "OK";
        return response;
    }

    public static <T> BaseResponse<List<T>> ofSucceeded(PageData<T> pageData) {
        val response = new BaseResponse<List<T>>();
        response.data = pageData.getContent();
        response.metadata.code = HttpStatusCode.OK.getValue();
        response.metadata.page = pageData.getPageNumber();
        response.metadata.size = pageData.getPageSize();
        response.metadata.total = pageData.getTotalElements();
        return response;
    }

    public static BaseResponse<Void> ofFailed(BusinessError errorCode) {
        return ofFailed(errorCode, null);
    }

    public static BaseResponse<Void> ofFailed(BusinessError errorCode, String message) {
        return ofFailed(errorCode, message, null);
    }

    public static BaseResponse<Void> ofFailed(BusinessError errorCode, String message, List<FieldViolation> errors) {
        val response = new BaseResponse<Void>();
        response.metadata.code = errorCode.code();
        response.metadata.message = (message != null) ? message : errorCode.message();
        response.metadata.errors = (errors != null) ? new ArrayList<>(errors) : null;
        return response;
    }

    public static BaseResponse<Void> ofFailed(ApplicationException exception) {
        return ofFailed(exception.getErrorCode(), exception.getMessage());
    }

    @Getter
    @Setter
    @JsonInclude(JsonInclude.Include.NON_NULL)
    public static class Metadata {

        private Integer code;
        private Integer page;
        private Integer size;
        private Long total;
        private List<FieldViolation> errors;
        private String message;
        private String requestId;

    }

    @Getter
    @Setter
    @AllArgsConstructor
    @Accessors(chain = true)
    public static class FieldViolation {

        private String field;
        private String description;

    }

}

package com.datbv.booking.api.controller;

import com.datbv.booking.domain.user.usecase.message.ValidateUserResult;
import com.datbv.booking.domain.user.usecase.ValidateUserUseCase;
import com.datbv.booking.domain.user.usecase.message.ValidateUserRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/test")
public class TestController {

    private final ValidateUserUseCase validateUserUseCase;

    @GetMapping("/validate-user")
    ValidateUserResult test() {
        val request = ValidateUserRequest.builder()
                .createIfNotExist(true)
                .user(ValidateUserRequest.User.builder()
                        .phoneNumber("0123456789")
                        .fullName("David")
                        .build())
                .build();
        return validateUserUseCase.validate(request);
    }

}

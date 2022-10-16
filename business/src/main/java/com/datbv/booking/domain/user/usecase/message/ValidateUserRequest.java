package com.datbv.booking.domain.user.usecase.message;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ValidateUserRequest {

    private User user;
    private boolean createIfNotExist;

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static final class User {

        private String phoneNumber;
        private String email;
        private String fullName;

    }
}

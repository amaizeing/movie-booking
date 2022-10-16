package com.datbv.booking.domain.user.entity;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserEntity {

    private long id;
    private String phoneNumber;
    private String email;
    private String fullName;

}

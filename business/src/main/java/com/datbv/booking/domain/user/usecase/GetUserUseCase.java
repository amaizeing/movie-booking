package com.datbv.booking.domain.user.usecase;

import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.repository.query.QueryUserGateway;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.Optional;

@Slf4j
@RequiredArgsConstructor
public class GetUserUseCase {

    private final QueryUserGateway userQuery;

    public Optional<UserEntity> getUserByPhoneNumber(final String phoneNumber) {
        return userQuery.findUserByPhoneNumber(phoneNumber);
    }
}

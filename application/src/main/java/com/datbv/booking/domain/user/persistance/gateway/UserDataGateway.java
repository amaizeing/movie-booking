package com.datbv.booking.domain.user.persistance.gateway;

import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.persistance.mapper.PersistenceUserMapper;
import com.datbv.booking.domain.user.persistance.repository.JpaUserRepository;
import com.datbv.booking.domain.user.repository.command.MutateUserDataGateway;
import com.datbv.booking.domain.user.repository.query.QueryUserDataGateway;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.util.Optional;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class UserDataGateway implements QueryUserDataGateway, MutateUserDataGateway {

    private final JpaUserRepository userRepository;

    private final PersistenceUserMapper userMapper;

    @Override
    public UserEntity createUser(final UserEntity userEntity) {
        val jpaUser = userMapper.mapToJpaUser(userEntity);
        return userMapper.mapToUserEntity(userRepository.save(jpaUser));
    }

    @Override
    public Optional<UserEntity> findUserByPhoneNumber(final String phoneNumber) {
        return userRepository.findByPhoneNumber(phoneNumber)
                .map(userMapper::mapToUserEntity);
    }

}

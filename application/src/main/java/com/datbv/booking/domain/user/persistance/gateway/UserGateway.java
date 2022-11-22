package com.datbv.booking.domain.user.persistance.gateway;

import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.persistance.mapper.PersistenceUserMapper;
import com.datbv.booking.domain.user.persistance.repository.JpaUserRepository;
import com.datbv.booking.domain.user.repository.command.MutateUserGateway;
import com.datbv.booking.domain.user.repository.query.QueryUserGateway;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class UserGateway implements QueryUserGateway, MutateUserGateway {

    private final JpaUserRepository userRepository;

    private final PersistenceUserMapper userMapper;

    @Override
    @Transactional
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

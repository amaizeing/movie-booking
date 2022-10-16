package com.datbv.booking.domain.user.usecase;

import com.datbv.booking.common.exception.NotFoundException;
import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.event.UserCreatedEvent;
import com.datbv.booking.domain.user.out.UserCreatedEventProducer;
import com.datbv.booking.domain.user.repository.command.MutateUserDataGateway;
import com.datbv.booking.domain.user.usecase.message.ValidateUserResult;
import com.datbv.booking.domain.user.mapper.UserMapper;
import com.datbv.booking.domain.user.repository.query.QueryUserDataGateway;
import com.datbv.booking.domain.user.usecase.message.ValidateUserRequest;
import com.datbv.booking.event.EventFactory;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.mapstruct.factory.Mappers;

import java.util.UUID;

@Slf4j
@RequiredArgsConstructor
public class ValidateUserUseCase {

    private final UserMapper userMapper = Mappers.getMapper(UserMapper.class);

    private final QueryUserDataGateway queryUser;
    private final MutateUserDataGateway mutateUser;
    private final UserCreatedEventProducer producer;

    public ValidateUserResult validate(final ValidateUserRequest request) {

        val phoneNumber = request.getUser().getPhoneNumber();

        val userOpt = queryUser.findUserByPhoneNumber(phoneNumber);
        if (userOpt.isPresent()) {
            return ValidateUserResult.ok();
        }

        if (!request.isCreateIfNotExist()) {
            return ValidateUserResult.error(new NotFoundException("User not found by phoneNumber:", phoneNumber));
        }

        val userEntity = userMapper.mapUserToUserEntity(request.getUser());
        mutateUser.createUser(userEntity);

        produceEvent(userEntity);

        return ValidateUserResult.ok();
    }

    private void produceEvent(final UserEntity user) {
        val event = UserCreatedEvent.builder()
                .eventId(UUID.randomUUID().toString())
                .payload(UserCreatedEvent.Payload.builder()
                        .user(user)
                        .build())
                .build();
        val eventData = EventFactory.data(event)
                .to("user.created")
                .onSuccess(() -> log.info("Producing {} event successful", event.getEvent()));
        producer.produce(eventData);
    }
}

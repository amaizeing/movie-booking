package com.datbv.booking.domain.user.usecase;

import com.datbv.booking.domain.user.entity.UserEntity;
import com.datbv.booking.domain.user.event.UserCreatedEvent;
import com.datbv.booking.domain.user.out.UserCreatedEventProducer;
import com.datbv.booking.domain.user.repository.command.MutateUserDataGateway;
import com.datbv.booking.domain.user.usecase.message.CreateUserRequest;
import com.datbv.booking.event.EventFactory;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.util.UUID;

@Slf4j
@RequiredArgsConstructor
public class CreateUserUserCase {

    private final MutateUserDataGateway userMutation;

    private final UserCreatedEventProducer producer;

    public UserEntity createUser(final CreateUserRequest request) {
        val user = userMutation.createUser(UserEntity.builder()
                .phoneNumber(request.getPhoneNumber())
                .fullName(request.getFullName())
                .email(request.getEmail())
                .build());
        produceEvent(user);
        return user;
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

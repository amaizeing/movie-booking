package com.datbv.booking.broker.producer;

import com.datbv.booking.domain.user.event.UserCreatedEvent;
import com.datbv.booking.domain.user.out.UserCreatedEventProducer;
import lombok.RequiredArgsConstructor;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class UserCreatedEventProducerImpl
        extends KafkaProducer<UserCreatedEvent>
        implements UserCreatedEventProducer {

    private final KafkaTemplate<String, UserCreatedEvent> kafkaTemplate;

    @Override
    KafkaTemplate<String, UserCreatedEvent> kafkaTemplate() {
        return kafkaTemplate;
    }

}

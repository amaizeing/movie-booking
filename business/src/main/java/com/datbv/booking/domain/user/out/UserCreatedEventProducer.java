package com.datbv.booking.domain.user.out;

import com.datbv.booking.domain.user.event.UserCreatedEvent;
import com.datbv.booking.event.EventProducer;

public interface UserCreatedEventProducer extends EventProducer<UserCreatedEvent> {
}

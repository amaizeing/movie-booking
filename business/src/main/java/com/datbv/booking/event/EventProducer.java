package com.datbv.booking.event;

public interface EventProducer<E extends IEvent> {

    void produce(final EventFactory<E> eventFactory);

}

package com.datbv.booking.event;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor(access = AccessLevel.PRIVATE)
public class EventFactory<E extends IEvent> {

    private final E event;
    private final String topic;
    private OnFailureProduceWatcher failureProduceWatcher;
    private OnSuccessProduceWatcher successProduceWatcher;

    public static <T extends IEvent> Destination<T> data(final T event) {
        return new Destination<>(event);
    }

    public EventFactory<E> onFailure(final OnFailureProduceWatcher failureProduceWatcher) {
        this.failureProduceWatcher = failureProduceWatcher;
        return this;
    }

    public EventFactory<E> onSuccess(final OnSuccessProduceWatcher successProduceWatcher) {
        this.successProduceWatcher = successProduceWatcher;
        return this;
    }

    public boolean hasWatcher() {
        return !noWatcher();
    }

    public boolean noWatcher() {
        return successProduceWatcher == null && failureProduceWatcher == null;
    }

    @Getter
    @RequiredArgsConstructor(access = AccessLevel.PRIVATE)
    public static class Destination<E extends IEvent> {

        private final E event;

        public EventFactory<E> to(final String topic) {
            return new EventFactory<>(event, topic);
        }

    }

}

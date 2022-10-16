package com.datbv.booking.broker.producer;

import com.datbv.booking.event.EventFactory;
import com.datbv.booking.event.EventProducer;
import com.datbv.booking.event.IEvent;
import com.datbv.booking.event.OnSuccessProduceWatcher;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.SendResult;
import org.springframework.util.concurrent.ListenableFuture;
import org.springframework.util.concurrent.ListenableFutureCallback;

import java.util.Optional;

@Slf4j
public abstract class KafkaProducer<T extends IEvent> implements EventProducer<T> {


    abstract KafkaTemplate<String, T> kafkaTemplate();

    @Override
    public void produce(final EventFactory<T> eventFactory) {
        val future = kafkaTemplate()
                .send(eventFactory.getTopic(), eventFactory.getEvent());
        log.info("Produce event...");
        if (eventFactory.hasWatcher()) {
            addCallback(eventFactory, future);
        }
    }

    void addCallback(final EventFactory<T> eventFactory,
            final ListenableFuture<SendResult<String, T>> future) {

        future.addCallback(new ListenableFutureCallback<>() {
            @Override
            public void onFailure(final Throwable throwable) {
                Optional.ofNullable(eventFactory.getFailureProduceWatcher())
                        .ifPresent(watcher -> watcher.onFailure(throwable));
            }

            @Override
            public void onSuccess(final SendResult<String, T> stringStringSendResult) {
                Optional.ofNullable(eventFactory.getSuccessProduceWatcher())
                        .ifPresent(OnSuccessProduceWatcher::onSuccess);
            }
        });
    }

}

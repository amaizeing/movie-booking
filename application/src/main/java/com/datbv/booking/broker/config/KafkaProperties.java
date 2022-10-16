package com.datbv.booking.broker.config;

import lombok.experimental.UtilityClass;

public class KafkaProperties {

    private KafkaProperties() {
    }

    @UtilityClass
    public static class Keys {

        public final String CONSUMER_KEY_DESERIALIZER = "spring.kafka.consumer.key-deserializer=";
        public final String CONSUMER_VALUE_DESERIALIZER = "spring.kafka.consumer.value-deserializer=";
        public final String CONSUMER_VALUE_DESERIALIZER_DELEGATE = "spring.kafka.consumer.properties.deserializer.value.delegate.class=";

        public final String JSON_DEFAULT_TYPE = "spring.json.value.default.type=";

    }

    @UtilityClass
    public static class Values {

        public final String STRING_DESERIALIZER = "org.apache.kafka.common.serialization.StringDeserializer";
        public final String JSON_DESERIALIZER = "org.springframework.kafka.support.serializer.JsonDeserializer";
        public final String ERROR_HANDLING_DESERIALIZER = "org.springframework.kafka.support.serializer.ErrorHandlingDeserializer";

    }


}

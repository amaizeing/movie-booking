package com.datbv.booking.domain.user.event;

import com.datbv.booking.domain.user.entity.UserEntity;
import lombok.*;
import lombok.experimental.Accessors;

@Getter
@Builder
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class UserCreatedEvent implements UserEvent {

    private String eventId;
    @Builder.Default
    private String event = "user.created";
    @Builder.Default
    private String source = "user-service";
    private Payload payload;

    @Getter
    @Builder
    @ToString
    @NoArgsConstructor
    @AllArgsConstructor
    @Accessors(chain = true)
    public static class Payload {

        private UserEntity user;

    }

}

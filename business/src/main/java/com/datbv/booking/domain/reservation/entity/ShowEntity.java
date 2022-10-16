package com.datbv.booking.domain.reservation.entity;

import com.datbv.booking.common.Identifier;
import java.time.ZonedDateTime;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class ShowEntity implements Identifier {

    private long id;
    private long movieId;
    private long roomId;
    private long theaterId;
    private String description;
    private Type type;
    private ZonedDateTime startTime;
    private ZonedDateTime endTime;

    public enum Type {
        NORMAL_SHOW,
        SNEAK_SHOW,
        SPECIAL_SHOW
    }

}

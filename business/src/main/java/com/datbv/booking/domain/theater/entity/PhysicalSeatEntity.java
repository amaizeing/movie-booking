package com.datbv.booking.domain.theater.entity;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PhysicalSeatEntity {

    private long id;
    private long roomId;
    private String seatCode;
    private Type type;

    public enum Type {
        NORMAL, VIP
    }
}

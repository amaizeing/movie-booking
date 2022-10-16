package com.datbv.booking.domain.reservation.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class VirtualSeatEntity {

    private long id;
    private long showId;
    private long roomId;
    private long physicalSeatId;
    private String seatCode;
    private Status status;

    public enum Status {
        AVAILABLE, BOOKED
    }

}

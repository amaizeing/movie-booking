package com.datbv.booking.domain.reservation.entity;

import lombok.*;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class ReservationEntity {

    private long id;
    private long userId;
    private ShowEntity show;
    private List<VirtualSeatEntity> virtualSeats;
    private LocalDateTime bookedTime;

}

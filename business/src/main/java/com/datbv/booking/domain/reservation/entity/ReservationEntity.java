package com.datbv.booking.domain.reservation.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.time.ZonedDateTime;
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
    private ZonedDateTime bookedTime;

}

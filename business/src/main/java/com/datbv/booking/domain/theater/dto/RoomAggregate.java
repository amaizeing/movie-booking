package com.datbv.booking.domain.theater.dto;

import com.datbv.booking.domain.theater.entity.PhysicalSeatEntity;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RoomAggregate {

    private RoomEntity room;
    private List<PhysicalSeatEntity> seats;

}

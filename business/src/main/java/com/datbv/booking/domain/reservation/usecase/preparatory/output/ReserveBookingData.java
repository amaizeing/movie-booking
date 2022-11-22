package com.datbv.booking.domain.reservation.usecase.preparatory.output;

import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.user.entity.UserEntity;
import lombok.Builder;

import java.util.List;

@Builder
public record ReserveBookingData(
        ShowEntity show,
        UserEntity user,
        List<VirtualSeatEntity> virtualSeats) {

}

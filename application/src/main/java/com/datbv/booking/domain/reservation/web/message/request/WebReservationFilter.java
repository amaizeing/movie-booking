package com.datbv.booking.domain.reservation.web.message.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class WebReservationFilter {

    private String phoneNumber;
    private Long reservationId;
}

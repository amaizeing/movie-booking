package com.datbv.booking.domain.reservation.web.message.response.web;

import com.datbv.booking.domain.reservation.usecase.response.ReservationResponse;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class WebReservations {

    private List<ReservationResponse> reservations;

}

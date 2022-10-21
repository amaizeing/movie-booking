package com.datbv.booking.domain.reservation.web.controller.api;

import com.datbv.booking.domain.reservation.service.WebReservationService;
import com.datbv.booking.domain.reservation.usecase.request.ReservationRequest;
import com.datbv.booking.domain.reservation.usecase.response.ReservationResponse;
import com.datbv.booking.domain.reservation.web.message.request.WebReservationFilter;
import com.datbv.booking.domain.reservation.web.message.response.web.WebReservations;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/user/reservations")
class ReservationController {

    private final WebReservationService reservationService;

    @PostMapping
    ReservationResponse reserve(@RequestBody final ReservationRequest request) {
        return reservationService.reserveBooking(request);
    }

    @GetMapping
    WebReservations getReservations(
            @RequestParam final String phoneNumber,
            @RequestParam(required = false) final Long reservationId) {

        val filter = WebReservationFilter.builder()
                .phoneNumber(phoneNumber)
                .reservationId(reservationId)
                .build();
        return reservationService.getReservations(filter);
    }

}

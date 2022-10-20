package com.datbv.booking.domain.reservation.web.controller.api;

import com.datbv.booking.domain.reservation.service.WebReservationService;
import com.datbv.booking.domain.reservation.usecase.request.ReservationRequest;
import com.datbv.booking.domain.reservation.usecase.response.ReservationResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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

}

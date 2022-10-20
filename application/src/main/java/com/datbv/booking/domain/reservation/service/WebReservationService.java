package com.datbv.booking.domain.reservation.service;

import com.datbv.booking.domain.reservation.usecase.ReserveBookingUseCase;
import com.datbv.booking.domain.reservation.usecase.request.ReservationRequest;
import com.datbv.booking.domain.reservation.usecase.response.ReservationResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
@RequiredArgsConstructor
public class WebReservationService {

    private final ReserveBookingUseCase reserveBookingUseCase;

    @Transactional
    public ReservationResponse reserveBooking(final ReservationRequest request) {
        return reserveBookingUseCase.reserveBooking(request);
    }

}

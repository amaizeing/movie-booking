package com.datbv.booking.domain.reservation.service;

import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.common.exception.NotFoundException;
import com.datbv.booking.domain.reservation.usecase.GetReservationUseCase;
import com.datbv.booking.domain.reservation.usecase.ReserveBookingUseCase;
import com.datbv.booking.domain.reservation.usecase.request.ReservationFilter;
import com.datbv.booking.domain.reservation.usecase.request.ReservationRequest;
import com.datbv.booking.domain.reservation.usecase.response.ReservationResponse;
import com.datbv.booking.domain.reservation.web.message.request.WebReservationFilter;
import com.datbv.booking.domain.reservation.web.message.response.web.WebReservations;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@Service
@RequiredArgsConstructor
public class WebReservationService {

    private final ReserveBookingUseCase reserveBookingUseCase;
    private final GetReservationUseCase getReservationUseCase;

    private final UserServiceAdapter userServiceAdapter;

    @Transactional
    public ReservationResponse reserveBooking(final ReservationRequest request) {
        return reserveBookingUseCase.reserveBooking(request);
    }

    @Transactional
    public WebReservations getReservations(final WebReservationFilter filter) {
        val user = userServiceAdapter.getUserByPhoneNumber(filter.getPhoneNumber())
                .orElseThrow(() -> new NotFoundException("User not found by phoneNumber: ***"));
        val reservationFilter = ReservationFilter.builder()
                .userId(user.getId())
                .reservationId(filter.getReservationId())
                .build();
        return new WebReservations(getReservationUseCase.getReservationsByFilter(reservationFilter));
    }

}

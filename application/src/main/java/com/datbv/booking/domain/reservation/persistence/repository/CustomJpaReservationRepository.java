package com.datbv.booking.domain.reservation.persistence.repository;

import com.datbv.booking.domain.reservation.persistence.entity.JpaReservation;
import com.datbv.booking.domain.reservation.usecase.request.ReservationFilter;

import java.util.List;

sealed interface CustomJpaReservationRepository permits CustomJpaReservationRepositoryImpl, JpaReservationRepository {

    List<JpaReservation> findByFilter(final ReservationFilter filter);
}

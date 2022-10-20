package com.datbv.booking.domain.reservation.repository.command;

import com.datbv.booking.domain.reservation.entity.ReservationEntity;

public interface MutateReservationDataGateway {

    ReservationEntity createReservation(final ReservationEntity reservation);
}

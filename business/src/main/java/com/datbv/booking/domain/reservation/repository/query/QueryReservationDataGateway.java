package com.datbv.booking.domain.reservation.repository.query;

import com.datbv.booking.domain.reservation.entity.ReservationEntity;
import com.datbv.booking.domain.reservation.usecase.request.ReservationFilter;

import java.util.List;

public interface QueryReservationDataGateway {

    List<ReservationEntity> findReservationsByFilter(final ReservationFilter filter);

}

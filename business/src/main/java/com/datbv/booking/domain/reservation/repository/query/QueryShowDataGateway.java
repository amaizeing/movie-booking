package com.datbv.booking.domain.reservation.repository.query;

import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.usecase.request.ShowFilter;

import java.util.List;

public interface QueryShowDataGateway {

    List<ShowEntity> findAllAvailableShows(final ShowFilter filter);

}

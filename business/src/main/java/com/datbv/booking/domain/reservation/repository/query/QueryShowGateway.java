package com.datbv.booking.domain.reservation.repository.query;

import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.usecase.request.ShowFilter;

import java.util.List;
import java.util.Optional;

public interface QueryShowGateway {

    List<ShowEntity> findAllAvailableShows(final ShowFilter filter);

    Optional<ShowEntity> findById(final long id);

}

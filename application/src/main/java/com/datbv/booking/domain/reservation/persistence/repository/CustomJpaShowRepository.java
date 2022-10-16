package com.datbv.booking.domain.reservation.persistence.repository;

import com.datbv.booking.domain.reservation.persistence.entity.JpaShow;
import com.datbv.booking.domain.reservation.usecase.request.ShowFilter;

import java.util.List;

sealed interface CustomJpaShowRepository permits CustomJpaShowRepositoryImpl, JpaShowRepository {

    List<JpaShow> findAllAvailableShows(final ShowFilter filter);
}

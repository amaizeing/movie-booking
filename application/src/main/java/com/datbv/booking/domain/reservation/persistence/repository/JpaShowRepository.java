package com.datbv.booking.domain.reservation.persistence.repository;

import com.datbv.booking.domain.reservation.persistence.entity.JpaShow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public non-sealed interface JpaShowRepository extends JpaRepository<JpaShow, Long>, CustomJpaShowRepository {
}

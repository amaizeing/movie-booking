package com.datbv.booking.domain.reservation.persistence.repository;

import com.datbv.booking.domain.reservation.persistence.entity.JpaReservationVirtualSeatXref;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JpaReservationVirtualSeatXrefRepository extends JpaRepository<JpaReservationVirtualSeatXref, Long> {
}

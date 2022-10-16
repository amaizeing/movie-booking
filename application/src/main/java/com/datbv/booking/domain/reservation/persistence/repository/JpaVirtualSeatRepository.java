package com.datbv.booking.domain.reservation.persistence.repository;

import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.persistence.entity.JpaVirtualSeat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface JpaVirtualSeatRepository extends JpaRepository<JpaVirtualSeat, Long> {

    @Query("SELECT s FROM JpaVirtualSeat s WHERE s.showId IN :showIds")
    List<VirtualSeatEntity> findByIds(final Collection<Long> showIds);

}

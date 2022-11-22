package com.datbv.booking.domain.reservation.persistence.repository;

import com.datbv.booking.domain.reservation.persistence.entity.JpaVirtualSeat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface JpaVirtualSeatRepository extends JpaRepository<JpaVirtualSeat, Long> {

    @Query("SELECT s FROM JpaVirtualSeat s WHERE s.id IN :ids")
    List<JpaVirtualSeat> findByIds(final Collection<Long> ids);

    @Query("SELECT s FROM JpaVirtualSeat s WHERE s.showId = :showId ORDER BY s.seatCode")
    List<JpaVirtualSeat> findByShowId(final long showId);

    @Query("SELECT s FROM JpaVirtualSeat s WHERE s.showId IN :showIds")
    List<JpaVirtualSeat> findByShowIds(final Collection<Long> showIds);

    @Modifying
    @Query("""
            UPDATE JpaVirtualSeat s SET s.status = 'BOOKED',
            s.updatedTime = now()
            WHERE s.id = :ids
            AND s.status = 'AVAILABLE'
            """)
    void reserveSeatsByIds(final Collection<Long> ids);

    @Query("""
            SELECT x.virtualSeat FROM JpaReservationVirtualSeatXref x
            WHERE x.reservationId = :reservationId
            """)
    List<JpaVirtualSeat> findByReservationId(final long reservationId);

}

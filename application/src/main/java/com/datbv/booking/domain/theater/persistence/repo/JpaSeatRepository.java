package com.datbv.booking.domain.theater.persistence.repo;

import com.datbv.booking.domain.theater.persistence.entity.JpaPhysicalSeat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface JpaSeatRepository extends JpaRepository<JpaPhysicalSeat, Long> {

    List<JpaPhysicalSeat> findByRoomId(final long roomId);
}

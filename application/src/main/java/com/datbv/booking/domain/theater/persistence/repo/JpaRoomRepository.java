package com.datbv.booking.domain.theater.persistence.repo;

import com.datbv.booking.domain.theater.persistence.entity.JpaRoom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface JpaRoomRepository extends JpaRepository<JpaRoom, Long> {

    @Query("SELECT r FROM JpaRoom r WHERE r.id IN :ids")
    List<JpaRoom> findByIds(Collection<Long> ids);

}

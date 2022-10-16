package com.datbv.booking.domain.theater.persistence.repo;

import com.datbv.booking.domain.theater.persistence.entity.JpaTheater;
import java.util.Collection;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface JpaTheaterRepository extends JpaRepository<JpaTheater, Long> {

    @Query("SELECT t FROM JpaTheater t WHERE t.id IN :ids")
    List<JpaTheater> findByIds(final Collection<Long> ids);
}

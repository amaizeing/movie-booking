package com.datbv.booking.domain.movie.persistence.repository;

import com.datbv.booking.domain.movie.persistence.entity.JpaMovie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public interface JpaMovieRepository extends JpaRepository<JpaMovie, Long> {

    @Query("SELECT m FROM JpaMovie m WHERE m.id IN :ids")
    List<JpaMovie> findByIds(final Collection<Long> ids);
}

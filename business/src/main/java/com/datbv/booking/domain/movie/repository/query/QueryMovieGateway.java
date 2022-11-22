package com.datbv.booking.domain.movie.repository.query;

import com.datbv.booking.domain.movie.entity.MovieEntity;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

public interface QueryMovieGateway {

    Optional<MovieEntity> findById(final long id);

    List<MovieEntity> findByIds(final Collection<Long> ids);

}

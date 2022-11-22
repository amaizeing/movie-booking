package com.datbv.booking.domain.movie.usecase;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.movie.repository.query.QueryMovieGateway;
import lombok.RequiredArgsConstructor;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
public class GetMovieUseCase {

    private final QueryMovieGateway movieQuery;

    public Optional<MovieEntity> getMovieById(final long id) {
        return movieQuery.findById(id);
    }

    public List<MovieEntity> getMoviesByIds(final Collection<Long> ids) {
        return movieQuery.findByIds(ids);
    }
}

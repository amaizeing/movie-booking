package com.datbv.booking.adapter.impl;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.movie.usecase.QueryMovieUseCase;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Slf4j
@RequiredArgsConstructor
public class InternalMovieServiceAdapter implements MovieServiceAdapter {

    private final QueryMovieUseCase queryMovieUseCase;

    @Override
    public Optional<MovieEntity> getMovieById(final long id) {
        return queryMovieUseCase.getMovieById(id);
    }

    @Override
    public List<MovieEntity> getMoviesByIds(final Collection<Long> ids) {
       return queryMovieUseCase.getMoviesByIds(ids);
    }

}

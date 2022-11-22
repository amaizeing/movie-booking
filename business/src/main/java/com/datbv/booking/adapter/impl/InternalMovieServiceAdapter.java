package com.datbv.booking.adapter.impl;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.movie.usecase.GetMovieUseCase;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.Collection;
import java.util.List;

@Slf4j
@RequiredArgsConstructor
public class InternalMovieServiceAdapter implements MovieServiceAdapter {

    private final GetMovieUseCase getMovieUseCase;

    @Override
    public MovieEntity getMovieById(final long id) {
        return getMovieUseCase.getMovieById(id).orElse(null);
    }

    @Override
    public List<MovieEntity> getMoviesByIds(final Collection<Long> ids) {
       return getMovieUseCase.getMoviesByIds(ids);
    }

}

package com.datbv.booking.adapter;

import com.datbv.booking.domain.movie.entity.MovieEntity;

import java.util.Collection;
import java.util.List;

public interface MovieServiceAdapter {

    MovieEntity getMovieById(final long id);
    List<MovieEntity> getMoviesByIds(final Collection<Long> ids);
}

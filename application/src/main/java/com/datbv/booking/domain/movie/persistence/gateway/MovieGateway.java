package com.datbv.booking.domain.movie.persistence.gateway;

import com.datbv.booking.common.util.CollectionUtil;
import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.movie.persistence.mapper.PersistenceMovieMapper;
import com.datbv.booking.domain.movie.persistence.repository.JpaMovieRepository;
import com.datbv.booking.domain.movie.repository.query.QueryMovieGateway;
import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class MovieGateway implements QueryMovieGateway {

    private final JpaMovieRepository movieRepository;

    private final PersistenceMovieMapper movieMapper;

    @Override
    public Optional<MovieEntity> findById(final long id) {
        return movieRepository.findById(id).map(movieMapper::mapToMovieEntity);
    }

    @Override
    public List<MovieEntity> findByIds(final Collection<Long> ids) {
        if (CollectionUtil.isEmpty(ids)) {
            return List.of();
        }
        return movieMapper.mapToMovieEntities(movieRepository.findByIds(ids));
    }

}

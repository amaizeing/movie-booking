package com.datbv.booking.domain.movie.persistence.mapper;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.movie.persistence.entity.JpaMovie;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

import java.time.Duration;
import java.util.Collection;
import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface PersistenceMovieMapper {

    @Mapping(target = "durationInSeconds", expression = "java(mapToDurationInSeconds(movie.getDuration()))")
    JpaMovie mapToJpaMovie(final MovieEntity movie);

    List<JpaMovie> mapToJpaMovies(final Collection<MovieEntity> movies);

    @Mapping(target = "duration", expression = "java(mapToDuration(movie.getDurationInSeconds()))")
    MovieEntity mapToMovieEntity(final JpaMovie movie);

    List<MovieEntity> mapToMovieEntities(final Collection<JpaMovie> movies);

    default Duration mapToDuration(final long durationInSeconds) {
        return Duration.ofSeconds(durationInSeconds);
    }

    default long mapToDurationInSeconds(final Duration duration) {
        return duration.toSeconds();
    }

}

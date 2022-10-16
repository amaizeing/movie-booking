package com.datbv.booking.domain.reservation.web.mapper;

import com.datbv.booking.domain.reservation.usecase.response.ShowAggregate;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByTheater;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByTheater.Movie;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByTheater.Show;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import lombok.val;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface WebShowsByTheaterMapper {

    WebShowsByTheater.Room mapToRoom(final RoomEntity room);

    WebShowsByTheater.Show mapToShow(final ShowAggregate show);

    WebShowsByTheater.Theater mapToTheater(final TheaterEntity theater);

    default WebShowsByTheater mapToWebShowsByTheater(final TheaterEntity theaterEntity,
            final Collection<ShowAggregate> shows) {

        val response = new WebShowsByTheater();
        val movieIdToMovie = new HashMap<Long, WebShowsByTheater.Movie>();

        for (val showAggregate : shows) {
            val show = mapToShow(showAggregate);
            val movieEntity = showAggregate.movie();

            movieIdToMovie.computeIfAbsent(movieEntity.getId(), id -> {
                        val innerMovie = new Movie(id);
                        response.addMovie(innerMovie);
                        return innerMovie;
                    })
                    .setName(movieEntity.getName())
                    .setRated(movieEntity.getRated())
                    .setDescription(movieEntity.getDescription())
                    .addShow(show);
        }

        val theater = mapToTheater(theaterEntity);
        response.setTheater(theater);
        response.getMovies().sort(Comparator.comparing(Movie::getName));
        response.getMovies().forEach(movie
                -> movie.getShows().sort(Comparator.comparing(Show::getStartTime)));

        return response;
    }
}

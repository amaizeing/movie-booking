package com.datbv.booking.domain.reservation.web.mapper;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.usecase.response.ShowAggregate;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByMovie;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByMovie.Show;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByMovie.Theater;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import lombok.val;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface WebShowsByMovieMapper {

    default WebShowsByMovie mapToWebShowsByMovie(final MovieEntity movieEntity,
            final Collection<ShowAggregate> shows) {

        val response = new WebShowsByMovie();
        val theaterIdToTheater = new HashMap<Long, WebShowsByMovie.Theater>();

        for (val showAggregate : shows) {
            val show = mapToShow(showAggregate);
            val theaterEntity = showAggregate.theater();

            theaterIdToTheater.computeIfAbsent(theaterEntity.getId(), id -> {
                        val innerTheater = new WebShowsByMovie.Theater(id);
                        response.addTheater(innerTheater);
                        return innerTheater;
                    })
                    .setName(theaterEntity.getName())
                    .addShow(show);

        }

        val movie = mapToMovie(movieEntity);
        response.setMovie(movie);
        response.getTheaters().sort(Comparator.comparing(Theater::getName));
        response.getTheaters().forEach(
                theater -> theater.getShows().sort(Comparator.comparing(Show::getStartTime)));
        return response;
    }

    WebShowsByMovie.Movie mapToMovie(final MovieEntity movieEntity);

    WebShowsByMovie.Room mapToRoom(final RoomEntity room);

    WebShowsByMovie.Show mapToShow(final ShowAggregate show);

}

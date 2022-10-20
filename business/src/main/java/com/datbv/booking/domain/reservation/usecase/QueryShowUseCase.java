package com.datbv.booking.domain.reservation.usecase;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.common.exception.ApplicationException;
import com.datbv.booking.common.exception.Errors;
import com.datbv.booking.common.util.CollectionUtil;
import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.repository.query.QueryShowDataGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryVirtualSeatDataGateway;
import com.datbv.booking.domain.reservation.usecase.request.ShowFilter;
import com.datbv.booking.domain.reservation.usecase.response.ShowAggregate;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.val;

@RequiredArgsConstructor
public class QueryShowUseCase {

    private final QueryShowDataGateway showQuery;
    private final QueryVirtualSeatDataGateway virtualSeatQuery;

    private final MovieServiceAdapter movieServiceAdapter;
    private final TheaterServiceAdapter theaterServiceAdapter;

    public Optional<ShowAggregate> getShowById(final long id) {
        val showOpt = showQuery.findById(id);
        if (showOpt.isEmpty()) {
            return Optional.empty();
        }

        val show = showOpt.get();
        val movie = movieServiceAdapter.getMovieById(show.getMovieId())
                .orElseThrow(() -> new ApplicationException(Errors.DATA_INCONSISTENCY));
        val room = theaterServiceAdapter.getRoomById(show.getRoomId())
                .orElseThrow(() -> new ApplicationException(Errors.DATA_INCONSISTENCY));
        val theater = theaterServiceAdapter.getTheaterById(show.getTheaterId())
                .orElseThrow(() -> new ApplicationException(Errors.DATA_INCONSISTENCY));
        val seats = virtualSeatQuery.findByShowId(show.getId());

        val showAggregate = ShowAggregate.builder()
                .id(show.getId())
                .theater(theater)
                .room(room)
                .movie(movie)
                .seats(seats)
                .description(show.getDescription())
                .type(show.getType())
                .startTime(show.getStartTime())
                .endTime(show.getEndTime())
                .build();

        return Optional.of(showAggregate);
    }

    public List<ShowAggregate> getAllAvailableShows(final ShowFilter filter) {
        val shows = showQuery.findAllAvailableShows(filter);
        if (CollectionUtil.isEmpty(shows)) {
            return List.of();
        }

        val movieIdToMovie = getMovieIdToMovie(shows);
        val roomIdToRoom = getRoomIdToRoom(shows);
        val theaterIdToTheater = getTheaterIdToTheater(shows);
        val showIdToSeats = getShowIdToSeats(shows);

        return shows.stream()
                .map(show -> ShowAggregate.builder()
                        .id(show.getId())
                        .theater(theaterIdToTheater.get(show.getTheaterId()))
                        .room(roomIdToRoom.get(show.getRoomId()))
                        .movie(movieIdToMovie.get(show.getMovieId()))
                        .seats(showIdToSeats.get(show.getId()))
                        .description(show.getDescription())
                        .type(show.getType())
                        .startTime(show.getStartTime())
                        .endTime(show.getEndTime())
                        .build())
                .toList();
    }

    private Map<Long, TheaterEntity> getTheaterIdToTheater(final List<ShowEntity> shows) {
        val theaterIds = CollectionUtil.setOf(shows, ShowEntity::getTheaterId);
        val theaters = theaterServiceAdapter.getTheatersByIds(theaterIds);
        return CollectionUtil.toMapIdWithIdentity(theaters);
    }

    private Map<Long, MovieEntity> getMovieIdToMovie(final List<ShowEntity> shows) {
        val movieIds = CollectionUtil.setOf(shows, ShowEntity::getMovieId);
        val movies = movieServiceAdapter.getMoviesByIds(movieIds);
        return CollectionUtil.toMapIdWithIdentity(movies);
    }

    private Map<Long, RoomEntity> getRoomIdToRoom(final List<ShowEntity> shows) {
        val roomIds = CollectionUtil.setOf(shows, ShowEntity::getRoomId);
        val rooms = theaterServiceAdapter.getRoomsByIds(roomIds);
        return CollectionUtil.toMapIdWithIdentity(rooms);
    }

    private Map<Long, List<VirtualSeatEntity>> getShowIdToSeats(final List<ShowEntity> shows) {
        val showIds = CollectionUtil.idsOf(shows);
        return virtualSeatQuery.findByShowIds(showIds);
    }

}

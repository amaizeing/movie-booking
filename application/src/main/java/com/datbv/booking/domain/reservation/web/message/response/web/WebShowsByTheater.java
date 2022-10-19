package com.datbv.booking.domain.reservation.web.message.response.web;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.time.ZonedDateTime;
import java.util.LinkedList;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class WebShowsByTheater {

    private WebShowsByTheater.Theater theater;
    private final List<WebShowsByTheater.Movie> movies = new LinkedList<>();

    public WebShowsByTheater addMovie(final WebShowsByTheater.Movie movie) {
        movies.add(movie);
        return this;
    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    @Accessors(chain = true)
    public static class Movie {

        private long id;
        private String name;
        private MovieEntity.Rated rated;
        private String description;
        private final List<WebShowsByTheater.Show> shows = new LinkedList<>();

        public Movie(final long id) {
            this.id = id;
        }

        public Movie addShow(final WebShowsByTheater.Show show) {
            shows.add(show);
            return this;
        }

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    @Accessors(chain = true)
    public static class Show {

        private long id;
        private Room room;
        private ShowEntity.Type type;
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm z")
        private ZonedDateTime startTime;

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    @Accessors(chain = true)
    public static class Room {

        private long id;
        private String name;
        private RoomEntity.Type type;

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    @Accessors(chain = true)
    public static class Theater {

        private long id;
        private String name;

    }

}

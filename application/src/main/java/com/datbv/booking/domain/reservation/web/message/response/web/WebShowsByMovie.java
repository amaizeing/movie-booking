package com.datbv.booking.domain.reservation.web.message.response.web;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.theater.entity.RoomEntity;
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
public class WebShowsByMovie {

    private WebShowsByMovie.Movie movie;
    private final List<WebShowsByMovie.Theater> theaters = new LinkedList<>();

    public WebShowsByMovie addTheater(final Theater theater) {
        theaters.add(theater);
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
        private final List<Show> shows = new LinkedList<>();

        public Theater(final long id) {
            this.id = id;
        }

        public Theater addShow(final Show show) {
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
        private WebShowsByMovie.Room room;
        private ShowEntity.Type type;
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
}

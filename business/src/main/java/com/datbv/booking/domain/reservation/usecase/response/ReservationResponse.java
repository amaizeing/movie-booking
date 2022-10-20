package com.datbv.booking.domain.reservation.usecase.response;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.Duration;
import java.time.ZonedDateTime;
import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ReservationResponse {

    private ReservationResponse.Show show;
    private ReservationResponse.User user;
    private ReservationResponse.Movie movie;
    private ReservationResponse.Room room;
    private ReservationResponse.Theater theater;
    private List<ReservationResponse.VirtualSeat> seats;

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Show {

        private String description;
        private ShowEntity.Type type;
        private ZonedDateTime startTime;
        private ZonedDateTime endTime;

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class User {

        private String phoneNumber;
        private String fullName;
        private String email;

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Room {

        private String name;

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Theater {

        private String name;

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Movie {

        private String name;
        private Duration duration;
        private MovieEntity.Rated rated;

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class VirtualSeat {

        private String seatCode;

    }

}

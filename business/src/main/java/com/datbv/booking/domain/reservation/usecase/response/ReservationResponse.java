package com.datbv.booking.domain.reservation.usecase.response;

import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.user.entity.UserEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
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

    private long id;
    private ReservationResponse.Show show;
    private ReservationResponse.User user;
    private ReservationResponse.Movie movie;
    private ReservationResponse.Room room;
    private ReservationResponse.Theater theater;
    private List<ReservationResponse.VirtualSeat> seats;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm z")
    private ZonedDateTime bookedTime;

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Show {

        private String description;
        private ShowEntity.Type type;
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm z")
        private ZonedDateTime startTime;
        @JsonFormat(pattern = "yyyy-MM-dd HH:mm z")
        private ZonedDateTime endTime;

        public static Show of(final ShowEntity show) {
            return Show.builder()
                    .description(show.getDescription())
                    .type(show.getType())
                    .startTime(show.getStartTime())
                    .endTime(show.getEndTime())
                    .build();
        }

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

        public static User of(final UserEntity user) {
            return User.builder()
                    .phoneNumber(user.getPhoneNumber())
                    .fullName(user.getFullName())
                    .email(user.getEmail())
                    .build();
        }

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Room {

        private String name;
        private RoomEntity.Type type;

        public static Room of(final RoomEntity room) {
            return new Room(room.getName(), room.getType());
        }

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Theater {

        private String name;

        public static Theater of(final TheaterEntity theater) {
            return new Theater(theater.getName());
        }

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

        public static Movie of(final MovieEntity movie) {
            return Movie.builder()
                    .name(movie.getName())
                    .duration(movie.getDuration())
                    .rated(movie.getRated())
                    .build();
        }

    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class VirtualSeat {

        private String seatCode;

        public static List<VirtualSeat> of(final List<VirtualSeatEntity> virtualSeats) {
            return virtualSeats.stream().map(seat -> new VirtualSeat(seat.getSeatCode())).toList();
        }

    }

}

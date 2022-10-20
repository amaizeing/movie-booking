package com.datbv.booking.domain.reservation.web.message.response.web;

import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.theater.entity.PhysicalSeatEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.time.ZonedDateTime;
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
public class WebShow {

    private long id;
    private WebShow.Movie movie;
    private WebShow.Theater theater;
    private WebShow.Room room;
    private List<WebShow.VirtualSeat> seats;
    private ShowEntity.Type type;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm z")
    private ZonedDateTime startTime;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm z")
    private ZonedDateTime endTime;

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

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    @Accessors(chain = true)
    public static class Room {

        private long id;
        private String name;
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
        private long durationInSeconds;
    }

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    @Accessors(chain = true)
    public static class VirtualSeat {

        private long id;
        private String seatCode;
        private PhysicalSeatEntity.Type type;
        private VirtualSeatEntity.Status status;
    }
}

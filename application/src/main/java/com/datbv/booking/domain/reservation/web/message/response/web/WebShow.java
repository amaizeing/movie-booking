package com.datbv.booking.domain.reservation.web.message.response.web;

import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
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

    public static class Theater {

    }

    public static class Room {

    }

    public static class Movie {

    }

    public static class VirtualSeat {

        private long id;
        private String seatCode;

        private VirtualSeatEntity.Status status;
    }
}

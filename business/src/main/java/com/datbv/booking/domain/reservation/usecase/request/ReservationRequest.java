package com.datbv.booking.domain.reservation.usecase.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ReservationRequest {

    private long showId;
    private User user;
    private boolean createUserIfNotExist;
    private List<VirtualSeat> seats;

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
    public static class VirtualSeat {

        private long id;

    }

}

package com.datbv.booking.domain.theater.entity;

import com.datbv.booking.common.Identifier;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class TheaterEntity implements Identifier {

    private long id;
    private String code;
    private String name;
    private Address address;

    @Getter
    @Setter
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Address {

        private String city;
        private String district;
        private String ward;
        private String detail;
        private String zipcode;
        private Long longitude;
        private Long latitude;

    }

}

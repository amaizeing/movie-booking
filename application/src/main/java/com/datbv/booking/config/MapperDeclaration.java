package com.datbv.booking.config;

import com.datbv.booking.domain.reservation.mapper.ReservationResponseMapper;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.mapstruct.factory.Mappers;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class MapperDeclaration {

    @Configuration
    @RequiredArgsConstructor
    static class ReservationDomain {

        @Bean
        ReservationResponseMapper reservationResponseMapper() {
            return Mappers.getMapper(ReservationResponseMapper.class);
        }

    }

}

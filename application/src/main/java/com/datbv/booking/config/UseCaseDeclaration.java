package com.datbv.booking.config;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.domain.movie.repository.query.QueryMovieDataGateway;
import com.datbv.booking.domain.movie.usecase.QueryMovieUseCase;
import com.datbv.booking.domain.reservation.repository.command.MutateReservationDataGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryShowDataGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryVirtualSeatDataGateway;
import com.datbv.booking.domain.reservation.usecase.CreateShowUseCase;
import com.datbv.booking.domain.reservation.usecase.QueryShowUseCase;
import com.datbv.booking.domain.reservation.usecase.ReserveBookingUseCase;
import com.datbv.booking.domain.theater.repository.query.QueryRoomDataGateway;
import com.datbv.booking.domain.theater.repository.query.QuerySeatDataGateway;
import com.datbv.booking.domain.theater.repository.query.QueryTheaterDataGateway;
import com.datbv.booking.domain.theater.usecase.QueryRoomUseCase;
import com.datbv.booking.domain.theater.usecase.QueryTheaterUseCase;
import com.datbv.booking.domain.user.out.UserCreatedEventProducer;
import com.datbv.booking.domain.user.repository.command.MutateUserDataGateway;
import com.datbv.booking.domain.user.repository.query.QueryUserDataGateway;
import com.datbv.booking.domain.user.usecase.CreateUserUserCase;
import com.datbv.booking.domain.user.usecase.GetUserUseCase;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
class UseCaseDeclaration {

    @Configuration
    @RequiredArgsConstructor
    static class UserDomain {

        @Bean
        GetUserUseCase getUserUseCase(final QueryUserDataGateway queryUserDataGateway) {
            return new GetUserUseCase(queryUserDataGateway);
        }

        @Bean
        CreateUserUserCase createUserUserCase(final MutateUserDataGateway mutateUserDataGateway,
                final UserCreatedEventProducer userCreatedEventProducer) {
            return new CreateUserUserCase(mutateUserDataGateway, userCreatedEventProducer);
        }

    }

    @Configuration
    @RequiredArgsConstructor
    static class MovieDomain {

        @Bean
        QueryMovieUseCase queryMovieUseCase(final QueryMovieDataGateway queryMovieDataGateway) {
            return new QueryMovieUseCase(queryMovieDataGateway);
        }

    }

    @Configuration
    @RequiredArgsConstructor
    static class TheaterDomain {

        @Bean
        QueryRoomUseCase queryRoomUseCase(
                final QuerySeatDataGateway querySeatDataGateway,
                final QueryRoomDataGateway queryRoomDataGateway) {
            return new QueryRoomUseCase(querySeatDataGateway, queryRoomDataGateway);
        }

        @Bean
        QueryTheaterUseCase queryTheaterUseCase(
                final QueryTheaterDataGateway queryTheaterDataGateway) {
            return new QueryTheaterUseCase(queryTheaterDataGateway);
        }

    }

    @Configuration
    @RequiredArgsConstructor
    static class ReservationDomain {

        @Bean
        QueryShowUseCase querySlotUseCase(
                final QueryShowDataGateway queryShowDataGateway,
                final QueryVirtualSeatDataGateway queryVirtualSeatDataGateway,
                final MovieServiceAdapter movieServiceAdapter,
                final TheaterServiceAdapter theaterServiceAdapter) {
            return new QueryShowUseCase(
                    queryShowDataGateway,
                    queryVirtualSeatDataGateway,
                    movieServiceAdapter,
                    theaterServiceAdapter);
        }

        @Bean
        ReserveBookingUseCase reserveBookingUseCase(
                final QueryShowDataGateway queryShow,
                final QueryVirtualSeatDataGateway queryVirtualSeat,
                final MutateReservationDataGateway mutateReservation,
                final UserServiceAdapter userServiceAdapter,
                final MovieServiceAdapter movieServiceAdapter,
                final TheaterServiceAdapter theaterServiceAdapter) {
            return new ReserveBookingUseCase(queryShow, queryVirtualSeat, mutateReservation,
                    userServiceAdapter, movieServiceAdapter, theaterServiceAdapter);
        }

        @Bean
        CreateShowUseCase createShowUseCase(
                final MovieServiceAdapter movieServiceAdapter,
                final TheaterServiceAdapter theaterServiceAdapter) {
            return new CreateShowUseCase(movieServiceAdapter, theaterServiceAdapter);
        }

    }

}

package com.datbv.booking.config;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.domain.movie.repository.query.QueryMovieDataGateway;
import com.datbv.booking.domain.movie.usecase.GetMovieUseCase;
import com.datbv.booking.domain.reservation.repository.command.MutateReservationDataGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryReservationDataGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryShowDataGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryVirtualSeatDataGateway;
import com.datbv.booking.domain.reservation.usecase.CreateShowUseCase;
import com.datbv.booking.domain.reservation.usecase.GetReservationUseCase;
import com.datbv.booking.domain.reservation.usecase.GetShowUseCase;
import com.datbv.booking.domain.reservation.usecase.ReserveBookingUseCase;
import com.datbv.booking.domain.theater.repository.query.QueryRoomDataGateway;
import com.datbv.booking.domain.theater.repository.query.QuerySeatDataGateway;
import com.datbv.booking.domain.theater.repository.query.QueryTheaterDataGateway;
import com.datbv.booking.domain.theater.usecase.GetRoomUseCase;
import com.datbv.booking.domain.theater.usecase.GetTheaterUseCase;
import com.datbv.booking.domain.user.out.UserCreatedEventProducer;
import com.datbv.booking.domain.user.repository.command.MutateUserDataGateway;
import com.datbv.booking.domain.user.repository.query.QueryUserDataGateway;
import com.datbv.booking.domain.user.usecase.CreateUserUserCase;
import com.datbv.booking.domain.user.usecase.GetUserUseCase;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

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
        GetMovieUseCase getMovieUseCase(final QueryMovieDataGateway queryMovieDataGateway) {
            return new GetMovieUseCase(queryMovieDataGateway);
        }

    }

    @Configuration
    @RequiredArgsConstructor
    static class TheaterDomain {

        @Bean
        GetRoomUseCase getRoomUseCase(
                final QuerySeatDataGateway querySeatDataGateway,
                final QueryRoomDataGateway queryRoomDataGateway) {
            return new GetRoomUseCase(querySeatDataGateway, queryRoomDataGateway);
        }

        @Bean
        GetTheaterUseCase getTheaterUseCase(
                final QueryTheaterDataGateway queryTheaterDataGateway) {
            return new GetTheaterUseCase(queryTheaterDataGateway);
        }

    }

    @Configuration
    @RequiredArgsConstructor
    static class ReservationDomain {

        @Bean
        GetShowUseCase querySlotUseCase(
                final QueryShowDataGateway queryShowDataGateway,
                final QueryVirtualSeatDataGateway queryVirtualSeatDataGateway,
                final MovieServiceAdapter movieServiceAdapter,
                final TheaterServiceAdapter theaterServiceAdapter) {
            return new GetShowUseCase(
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
        GetReservationUseCase getReservationUseCase(
                final QueryReservationDataGateway reservationQuery,
                final MovieServiceAdapter movieServiceAdapter,
                final TheaterServiceAdapter theaterServiceAdapter) {
            return new GetReservationUseCase(reservationQuery, movieServiceAdapter, theaterServiceAdapter);
        }

        @Bean
        CreateShowUseCase createShowUseCase(
                final MovieServiceAdapter movieServiceAdapter,
                final TheaterServiceAdapter theaterServiceAdapter) {
            return new CreateShowUseCase(movieServiceAdapter, theaterServiceAdapter);
        }

    }

}

package com.datbv.booking.config;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.domain.movie.repository.query.QueryMovieGateway;
import com.datbv.booking.domain.movie.usecase.GetMovieUseCase;
import com.datbv.booking.domain.reservation.mapper.ReservationResponseMapper;
import com.datbv.booking.domain.reservation.repository.command.MutateReservationGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryReservationGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryShowGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryVirtualSeatGateway;
import com.datbv.booking.domain.reservation.usecase.CreateShowUseCase;
import com.datbv.booking.domain.reservation.usecase.GetReservationUseCase;
import com.datbv.booking.domain.reservation.usecase.GetShowUseCase;
import com.datbv.booking.domain.reservation.usecase.ReserveBookingUseCase;
import com.datbv.booking.domain.reservation.usecase.preparatory.ReserveBookingPreparatory;
import com.datbv.booking.domain.theater.repository.query.QueryRoomGateway;
import com.datbv.booking.domain.theater.repository.query.QuerySeatGateway;
import com.datbv.booking.domain.theater.repository.query.QueryTheaterGateway;
import com.datbv.booking.domain.theater.usecase.GetRoomUseCase;
import com.datbv.booking.domain.theater.usecase.GetTheaterUseCase;
import com.datbv.booking.domain.user.out.UserCreatedEventProducer;
import com.datbv.booking.domain.user.repository.command.MutateUserGateway;
import com.datbv.booking.domain.user.repository.query.QueryUserGateway;
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
        GetUserUseCase getUserUseCase(final QueryUserGateway queryUserGateway) {
            return new GetUserUseCase(queryUserGateway);
        }

        @Bean
        CreateUserUserCase createUserUserCase(final MutateUserGateway mutateUserGateway,
                final UserCreatedEventProducer userCreatedEventProducer) {
            return new CreateUserUserCase(mutateUserGateway, userCreatedEventProducer);
        }

    }

    @Configuration
    @RequiredArgsConstructor
    static class MovieDomain {

        @Bean
        GetMovieUseCase getMovieUseCase(final QueryMovieGateway queryMovieGateway) {
            return new GetMovieUseCase(queryMovieGateway);
        }

    }

    @Configuration
    @RequiredArgsConstructor
    static class TheaterDomain {

        @Bean
        GetRoomUseCase getRoomUseCase(
                final QuerySeatGateway querySeatGateway,
                final QueryRoomGateway queryRoomGateway) {
            return new GetRoomUseCase(querySeatGateway, queryRoomGateway);
        }

        @Bean
        GetTheaterUseCase getTheaterUseCase(
                final QueryTheaterGateway queryTheaterGateway) {
            return new GetTheaterUseCase(queryTheaterGateway);
        }

    }

    @Configuration
    @RequiredArgsConstructor
    static class ReservationDomain {

        @Bean
        ReserveBookingPreparatory reserveBookingValidator(
                final QueryShowGateway showQuery,
                final QueryVirtualSeatGateway virtualSeatQuery,
                final UserServiceAdapter userServiceAdapter) {
            return new ReserveBookingPreparatory(showQuery, virtualSeatQuery, userServiceAdapter);
        }

        @Bean
        GetShowUseCase querySlotUseCase(
                final QueryShowGateway queryShowGateway,
                final QueryVirtualSeatGateway queryVirtualSeatGateway,
                final MovieServiceAdapter movieServiceAdapter,
                final TheaterServiceAdapter theaterServiceAdapter) {
            return new GetShowUseCase(
                    queryShowGateway,
                    queryVirtualSeatGateway,
                    movieServiceAdapter,
                    theaterServiceAdapter);
        }

        @Bean
        ReserveBookingUseCase reserveBookingUseCase(
                final MutateReservationGateway mutateReservation,
                final MovieServiceAdapter movieServiceAdapter,
                final TheaterServiceAdapter theaterServiceAdapter,
                final ReserveBookingPreparatory validator,
                final ReservationResponseMapper mapper) {
            return new ReserveBookingUseCase(mutateReservation,
                    movieServiceAdapter, theaterServiceAdapter, validator, mapper);
        }

        @Bean
        GetReservationUseCase getReservationUseCase(
                final QueryReservationGateway reservationQuery,
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

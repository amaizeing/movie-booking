package com.datbv.booking.config;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.adapter.impl.InternalMovieServiceAdapter;
import com.datbv.booking.adapter.impl.InternalTheaterServiceAdapter;
import com.datbv.booking.adapter.impl.InternalUserServiceAdapter;
import com.datbv.booking.domain.movie.usecase.QueryMovieUseCase;
import com.datbv.booking.domain.theater.usecase.QueryRoomUseCase;
import com.datbv.booking.domain.theater.usecase.QueryTheaterUseCase;
import com.datbv.booking.domain.user.usecase.ValidateUserUseCase;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
class AdapterDeclaration {

    @Bean
    MovieServiceAdapter movieServiceAdapter(final QueryMovieUseCase queryMovieUseCase) {
        return new InternalMovieServiceAdapter(queryMovieUseCase);
    }

    @Bean
    TheaterServiceAdapter theaterServiceAdapter(
            final QueryRoomUseCase queryRoomUseCase,
            final QueryTheaterUseCase queryTheaterUseCase) {
        return new InternalTheaterServiceAdapter(queryRoomUseCase, queryTheaterUseCase);
    }

    @Bean
    UserServiceAdapter userServiceAdapter(final ValidateUserUseCase validateUserUseCase) {
        return new InternalUserServiceAdapter(validateUserUseCase);
    }

}

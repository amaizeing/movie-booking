package com.datbv.booking.config;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.adapter.impl.InternalMovieServiceAdapter;
import com.datbv.booking.adapter.impl.InternalTheaterServiceAdapter;
import com.datbv.booking.adapter.impl.InternalUserServiceAdapter;
import com.datbv.booking.domain.movie.usecase.GetMovieUseCase;
import com.datbv.booking.domain.theater.usecase.GetRoomUseCase;
import com.datbv.booking.domain.theater.usecase.GetTheaterUseCase;
import com.datbv.booking.domain.user.usecase.CreateUserUserCase;
import com.datbv.booking.domain.user.usecase.GetUserUseCase;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
class AdapterDeclaration {

    @Bean
    MovieServiceAdapter movieServiceAdapter(final GetMovieUseCase getMovieUseCase) {
        return new InternalMovieServiceAdapter(getMovieUseCase);
    }

    @Bean
    TheaterServiceAdapter theaterServiceAdapter(
            final GetRoomUseCase getRoomUseCase,
            final GetTheaterUseCase getTheaterUseCase) {
        return new InternalTheaterServiceAdapter(getRoomUseCase, getTheaterUseCase);
    }

    @Bean
    UserServiceAdapter userServiceAdapter(final GetUserUseCase getUserUseCase,
            final CreateUserUserCase createUserUserCase) {
        return new InternalUserServiceAdapter(getUserUseCase, createUserUserCase);
    }

}

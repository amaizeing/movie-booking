package com.datbv.booking.domain.reservation.usecase;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.common.exception.NotFoundException;
import com.datbv.booking.domain.reservation.usecase.request.CreateShowRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

@Slf4j
@RequiredArgsConstructor
public class CreateShowUseCase {

    private final MovieServiceAdapter movieServiceAdapter;
    private final TheaterServiceAdapter theaterServiceAdapter;

    public void createShow(final CreateShowRequest request) {
        val movie = movieServiceAdapter.getMovieById(request.getMovieId())
                .orElseThrow(() -> new NotFoundException("Movie not found by id:", request.getMovieId()));

        val room = theaterServiceAdapter.getRoomById(request.getRoomId())
                .orElseThrow(() -> new NotFoundException("Room not found by id:", request.getRoomId()));



    }

}

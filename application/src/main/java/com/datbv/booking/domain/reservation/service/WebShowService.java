package com.datbv.booking.domain.reservation.service;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.common.exception.NotFoundException;
import com.datbv.booking.domain.reservation.usecase.CreateShowUseCase;
import com.datbv.booking.domain.reservation.usecase.QueryShowUseCase;
import com.datbv.booking.domain.reservation.usecase.request.CreateShowRequest;
import com.datbv.booking.domain.reservation.web.mapper.WebShowsByMovieMapper;
import com.datbv.booking.domain.reservation.web.mapper.WebShowsByTheaterMapper;
import com.datbv.booking.domain.reservation.web.message.request.WebShowFilter;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByMovie;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByTheater;
import lombok.RequiredArgsConstructor;
import lombok.val;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class WebShowService {

    private final QueryShowUseCase queryShowUseCase;
    private final CreateShowUseCase createShowUseCase;

    private final MovieServiceAdapter movieServiceAdapter;
    private final TheaterServiceAdapter theaterServiceAdapter;

    private final WebShowsByMovieMapper webShowsByMovieMapper;
    private final WebShowsByTheaterMapper webShowsByTheaterMapper;

    @Transactional
    public WebShowsByTheater getWebShowsByTheater(final WebShowFilter webShowFilter) {
        val shows = queryShowUseCase.getAllAvailableShows(webShowFilter.mapToShowFilter());
        val theater = theaterServiceAdapter.getTheaterById(webShowFilter.getTheaterId())
                .orElseThrow(() -> new NotFoundException("Theater not found by id:",
                        webShowFilter.getTheaterId()));
        return webShowsByTheaterMapper.mapToWebShowsByTheater(theater, shows);
    }

    @Transactional
    public WebShowsByMovie getWebShowsByMovie(final WebShowFilter webShowFilter) {
        val shows = queryShowUseCase.getAllAvailableShows(webShowFilter.mapToShowFilter());
        val movie = movieServiceAdapter.getMovieById(webShowFilter.getMovieId())
                .orElseThrow(() -> new NotFoundException("Movie not found by id:",
                        webShowFilter.getMovieId()));
        return webShowsByMovieMapper.mapToWebShowsByMovie(movie, shows);
    }

    @Transactional
    public void createShow(final CreateShowRequest request) {
        createShowUseCase.createShow(request);
    }

}

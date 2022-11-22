package com.datbv.booking.domain.reservation.service;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.common.exception.ApplicationException;
import com.datbv.booking.common.exception.BusinessError;
import com.datbv.booking.common.exception.NotFoundException;
import com.datbv.booking.common.http.HttpStatusCode;
import com.datbv.booking.domain.reservation.usecase.CreateShowUseCase;
import com.datbv.booking.domain.reservation.usecase.GetShowUseCase;
import com.datbv.booking.domain.reservation.usecase.request.CreateShowRequest;
import com.datbv.booking.domain.reservation.web.mapper.WebShowMapper;
import com.datbv.booking.domain.reservation.web.mapper.WebShowsByMovieMapper;
import com.datbv.booking.domain.reservation.web.mapper.WebShowsByTheaterMapper;
import com.datbv.booking.domain.reservation.web.message.request.WebShowFilter;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShow;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByMovie;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByTheater;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.ZonedDateTime;
import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor
public class WebShowService {

    private final GetShowUseCase getShowUseCase;
    private final CreateShowUseCase createShowUseCase;

    private final MovieServiceAdapter movieServiceAdapter;
    private final TheaterServiceAdapter theaterServiceAdapter;

    private final WebShowMapper webShowMapper;
    private final WebShowsByMovieMapper webShowsByMovieMapper;
    private final WebShowsByTheaterMapper webShowsByTheaterMapper;

    @Transactional
    public WebShowsByTheater getWebShowsByTheater(final WebShowFilter webShowFilter) {
        val shows = getShowUseCase.getAllAvailableShows(webShowFilter.mapToShowFilter());
        val theater = Optional.ofNullable(theaterServiceAdapter.getTheaterById(webShowFilter.getTheaterId()))
                .orElseThrow(() -> new NotFoundException("Theater not found by id:",
                        webShowFilter.getTheaterId()));
        return webShowsByTheaterMapper.mapToWebShowsByTheater(theater, shows);
    }

    @Transactional
    public WebShowsByMovie getWebShowsByMovie(final WebShowFilter webShowFilter) {
        val shows = getShowUseCase.getAllAvailableShows(webShowFilter.mapToShowFilter());
        val movie = Optional.ofNullable(movieServiceAdapter.getMovieById(webShowFilter.getMovieId()))
                .orElseThrow(() -> new NotFoundException("Movie not found by id:", webShowFilter.getMovieId()));
        return webShowsByMovieMapper.mapToWebShowsByMovie(movie, shows);
    }

    @Transactional
    public WebShow getShowDetail(final long showId) {
        val show = getShowUseCase.getShowById(showId)
                .orElseThrow(() -> new NotFoundException("Show not found by id:", showId));

        val now = ZonedDateTime.now();
        val startTime = show.startTime();
        if (now.plusMinutes(15).isAfter(startTime)) {
            throw new ApplicationException(
                    new BusinessError(400,
                            "Show detail is only available before starting time 15 minutes",
                            HttpStatusCode.BAD_REQUEST));
        }
        return webShowMapper.mapToWebShow(show);
    }

    @Transactional
    public void createShow(final CreateShowRequest request) {
        createShowUseCase.createShow(request);
    }

}

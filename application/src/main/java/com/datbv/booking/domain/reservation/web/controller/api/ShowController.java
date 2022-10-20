package com.datbv.booking.domain.reservation.web.controller.api;

import com.datbv.booking.domain.reservation.service.WebShowService;
import com.datbv.booking.domain.reservation.web.message.request.WebShowFilter;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShow;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByMovie;
import com.datbv.booking.domain.reservation.web.message.response.web.WebShowsByTheater;
import java.time.LocalDate;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/user/shows")
class ShowController {

    private final WebShowService webShowService;

    /**
     * Return all shows of giving date and grouping by movies by theater.
     *
     * @param theaterId theaterId
     * @param date      date, if date is null then default value is today.
     * @return all shows of this theater group by movie.
     */
    @GetMapping("/theater/{theaterId}")
    WebShowsByTheater getShowsByTheater(@PathVariable final long theaterId,
            @RequestParam(required = false)
            @DateTimeFormat(pattern = "yyyy-MM-dd") final LocalDate date) {
        val filter = WebShowFilter.builder()
                .theaterId(theaterId)
                .date(date == null ? LocalDate.now() : date)
                .build();
        return webShowService.getWebShowsByTheater(filter);
    }

    /**
     * Return all shows of giving date and grouping by theater.
     *
     * @param movieId movieId
     * @param date    date, if date is null then default value is today.
     * @return all shows of this movie group by theater.
     */
    @GetMapping("/movie/{movieId}")
    WebShowsByMovie getShowsByMovie(@PathVariable final long movieId,
            @RequestParam(required = false)
            @DateTimeFormat(pattern = "yyyy-MM-dd") final LocalDate date) {
        val filter = WebShowFilter.builder()
                .movieId(movieId)
                .date(date == null ? LocalDate.now() : date)
                .build();
        return webShowService.getWebShowsByMovie(filter);
    }

    @GetMapping("/{showId}")
    WebShow getShowDetail(@PathVariable final long showId) {
        return webShowService.getShowDetail(showId);
    }

}

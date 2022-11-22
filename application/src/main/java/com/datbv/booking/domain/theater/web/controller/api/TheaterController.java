package com.datbv.booking.domain.theater.web.controller.api;

import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.theater.service.WebTheaterService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/user/theaters")
class TheaterController {

    private final WebTheaterService theaterService;

    @GetMapping
    List<TheaterEntity> getAllTheaters() {
        return theaterService.getAllTheaters();
    }

}

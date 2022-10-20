package com.datbv.booking.domain.reservation.web.controller.admin;

import com.datbv.booking.domain.reservation.usecase.request.CreateShowRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/admin/shows")
class AdminShowController {

    @PostMapping
    void createShow(@RequestBody CreateShowRequest request) {
        // TODO
    }
}

package com.datbv.booking.domain.theater.service;

import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.theater.usecase.GetTheaterUseCase;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class WebTheaterService {

    private final GetTheaterUseCase getTheaterUseCase;

    public List<TheaterEntity> getAllTheaters() {
        return getTheaterUseCase.getAll();
    }
}

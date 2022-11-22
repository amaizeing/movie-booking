package com.datbv.booking.domain.reservation.usecase.preparatory;

import com.datbv.booking.adapter.UserServiceAdapter;
import com.datbv.booking.common.exception.ApplicationException;
import com.datbv.booking.common.exception.NotFoundException;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.repository.query.QueryShowGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryVirtualSeatGateway;
import com.datbv.booking.domain.reservation.usecase.request.ReservationRequest;
import lombok.val;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.ZonedDateTime;
import java.util.List;
import java.util.Optional;

@ExtendWith(MockitoExtension.class)
class ReserveBookingPreparatoryTest {

    @InjectMocks
    private ReserveBookingPreparatory underTest;

    @Mock
    private QueryShowGateway showQuery;
    @Mock
    private QueryVirtualSeatGateway virtualSeatQuery;

    @Mock
    private UserServiceAdapter userServiceAdapter;

    @Test
    void error_becauseOf_emptySeat() {
        // given
        val request = ReservationRequest.builder().build();

        // then
        Assertions.assertThrows(ApplicationException.class, () -> {
            // when
            underTest.prepare(request);
        });
    }

    @Test
    void error_becauseOf_showNotFound() {
        // given
        val request = ReservationRequest.builder()
                .showId(1)
                .seats(List.of(ReservationRequest.VirtualSeat.builder().id(1).build()))
                .build();
        Mockito.when(showQuery.findById(request.getShowId())).thenReturn(Optional.empty());

        // then
        Assertions.assertThrows(NotFoundException.class, () -> {
            // when
            underTest.prepare(request);
        });
    }

    @Test
    void error_becauseOf_showOverTime() {
        // given
        val request = ReservationRequest.builder()
                .showId(1)
                .seats(List.of(ReservationRequest.VirtualSeat.builder().id(1).build()))
                .build();
        val show = ShowEntity.builder()
                .id(request.getShowId())
                .startTime(ZonedDateTime.now())
                .build();
        Mockito.when(showQuery.findById(request.getShowId())).thenReturn(Optional.of(show));

        // then
        Assertions.assertThrows(ApplicationException.class, () -> {
            // when
            underTest.prepare(request);
        });
    }

}

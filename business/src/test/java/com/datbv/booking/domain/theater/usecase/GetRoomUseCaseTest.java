package com.datbv.booking.domain.theater.usecase;

import com.datbv.booking.domain.theater.repository.query.QueryRoomGateway;
import com.datbv.booking.domain.theater.repository.query.QuerySeatGateway;
import lombok.val;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class GetRoomUseCaseTest {

    @InjectMocks
    private GetRoomUseCase underTest;

    @Mock
    private QuerySeatGateway seatQuery;
    @Mock
    private QueryRoomGateway roomQuery;

    @Test
    void getRoomByIdTest() {
        // given
        val roomId = 1L;

        // when
        underTest.getRoomById(roomId);

        // then
        Mockito.verify(roomQuery).findById(roomId);
    }

}

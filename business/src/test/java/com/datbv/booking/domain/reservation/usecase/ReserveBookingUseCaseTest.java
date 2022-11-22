package com.datbv.booking.domain.reservation.usecase;

import com.datbv.booking.adapter.MovieServiceAdapter;
import com.datbv.booking.adapter.TheaterServiceAdapter;
import com.datbv.booking.domain.movie.entity.MovieEntity;
import com.datbv.booking.domain.reservation.entity.ReservationEntity;
import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.mapper.ReservationResponseMapper;
import com.datbv.booking.domain.reservation.repository.command.MutateReservationGateway;
import com.datbv.booking.domain.reservation.usecase.preparatory.Preparatory;
import com.datbv.booking.domain.reservation.usecase.preparatory.output.ReserveBookingData;
import com.datbv.booking.domain.reservation.usecase.request.ReservationRequest;
import com.datbv.booking.domain.theater.entity.RoomEntity;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.user.entity.UserEntity;
import lombok.val;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mapstruct.factory.Mappers;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.Spy;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.ZonedDateTime;

@ExtendWith(MockitoExtension.class)
class ReserveBookingUseCaseTest {

    @InjectMocks
    private ReserveBookingUseCase underTest;

    @Mock
    private MutateReservationGateway reservationMutation;

    @Mock
    private MovieServiceAdapter movieServiceAdapter;
    @Mock
    private TheaterServiceAdapter theaterServiceAdapter;

    @Mock
    private Preparatory<ReservationRequest, ReserveBookingData> preparatory;

    @Spy
    private final ReservationResponseMapper mapper = Mappers.getMapper(ReservationResponseMapper.class);

    private UserEntity mockUser() {
        return UserEntity.builder()
                .phoneNumber("0123456789")
                .fullName("Test User")
                .email("test@gmail.com")
                .build();
    }

    private ShowEntity mockShow() {
        return ShowEntity.builder()
                .id(1)
                .movieId(1)
                .roomId(1)
                .theaterId(1)
                .build();
    }

    private MovieEntity mockMovie() {
        return MovieEntity.builder()
                .id(1)
                .name("Movie name")
                .build();
    }

    private RoomEntity mockRoom() {
        return RoomEntity.builder()
                .id(1)
                .build();
    }

    private TheaterEntity mockTheater() {
        return TheaterEntity.builder()
                .id(1)
                .build();
    }

    private ReserveBookingData mockValidatedData() {
        return ReserveBookingData.builder()
                .show(mockShow())
                .user(mockUser())
                .build();
    }

    private ReservationEntity mockReservation() {
        return ReservationEntity.builder()
                .id(1)
                .bookedTime(ZonedDateTime.now())
                .build();
    }

    @Test
    void createReservation_success() {

        // given
        val request = ReservationRequest.builder()
                .build();
        val data = mockValidatedData();
        val reservation = mockReservation();

        Mockito.when(preparatory.prepare(Mockito.any())).thenReturn(data);
        Mockito.when(movieServiceAdapter.getMovieById(Mockito.anyLong())).thenReturn(mockMovie());
        Mockito.when(theaterServiceAdapter.getRoomById(Mockito.anyLong())).thenReturn(mockRoom());
        Mockito.when(theaterServiceAdapter.getTheaterById(Mockito.anyLong())).thenReturn(mockTheater());
        Mockito.when(reservationMutation.createReservation(Mockito.any())).thenReturn(reservation);

        // when
        val response = underTest.reserveBooking(request);
        Assertions.assertEquals(reservation.getId(), response.getId());
        Assertions.assertEquals(reservation.getBookedTime(), response.getBookedTime());
    }


}

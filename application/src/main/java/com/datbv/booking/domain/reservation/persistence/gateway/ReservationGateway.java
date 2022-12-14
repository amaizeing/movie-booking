package com.datbv.booking.domain.reservation.persistence.gateway;

import com.datbv.booking.domain.reservation.entity.ReservationEntity;
import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.reservation.persistence.entity.JpaReservation;
import com.datbv.booking.domain.reservation.persistence.entity.JpaReservationVirtualSeatXref;
import com.datbv.booking.domain.reservation.persistence.mapper.PersistenceShowMapper;
import com.datbv.booking.domain.reservation.persistence.mapper.PersistenceVirtualSeatMapper;
import com.datbv.booking.domain.reservation.persistence.repository.JpaReservationRepository;
import com.datbv.booking.domain.reservation.persistence.repository.JpaReservationVirtualSeatXrefRepository;
import com.datbv.booking.domain.reservation.persistence.repository.JpaShowRepository;
import com.datbv.booking.domain.reservation.persistence.repository.JpaVirtualSeatRepository;
import com.datbv.booking.domain.reservation.repository.command.MutateReservationGateway;
import com.datbv.booking.domain.reservation.repository.query.QueryReservationGateway;
import com.datbv.booking.domain.reservation.usecase.request.ReservationFilter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class ReservationGateway implements MutateReservationGateway, QueryReservationGateway {

    private final JpaShowRepository showRepository;
    private final JpaReservationRepository reservationRepository;
    private final JpaVirtualSeatRepository virtualSeatRepository;
    private final JpaReservationVirtualSeatXrefRepository reservationVirtualSeatXrefRepository;

    private final PersistenceShowMapper showMapper;
    private final PersistenceVirtualSeatMapper virtualSeatMapper;

    @Override
    public ReservationEntity createReservation(final ReservationEntity reservationEntity) {
        val show = showRepository.getReferenceById(reservationEntity.getShow().getId());

        val reservation = JpaReservation.builder()
                .show(show)
                .bookedTime(reservationEntity.getBookedTime())
                .userId(reservationEntity.getUserId())
                .build();
        reservationRepository.save(reservation);

        val virtualSeatIds = reservationEntity.getVirtualSeats().stream()
                .map(VirtualSeatEntity::getId)
                .toList();

        virtualSeatRepository.reserveSeatsByIds(virtualSeatIds);

        val xref = virtualSeatIds.stream()
                .map(id -> JpaReservationVirtualSeatXref.builder()
                        .reservation(reservation)
                        .virtualSeat(virtualSeatRepository.getReferenceById(id))
                        .build())
                .collect(Collectors.toSet());
        reservationVirtualSeatXrefRepository.saveAll(xref);

        reservationEntity.setId(reservation.getId())
                .setBookedTime(reservation.getBookedTime())
                .getVirtualSeats().forEach(seat -> seat.setStatus(VirtualSeatEntity.Status.BOOKED));
        return reservationEntity;
    }

    @Override
    public List<ReservationEntity> findReservationsByFilter(final ReservationFilter filter) {
        return reservationRepository.findByFilter(filter)
                .stream()
                .map(reservation ->
                        ReservationEntity.builder()
                                .id(reservation.getId())
                                .userId(reservation.getUserId())
                                .show(showMapper.mapToShowEntity(reservation.getShow()))
                                .virtualSeats(virtualSeatMapper.mapToVirtualSeatEntities(virtualSeatRepository
                                        .findByReservationId(reservation.getId())))
                                .bookedTime(reservation.getBookedTime())
                                .build())
                .toList();
    }

}

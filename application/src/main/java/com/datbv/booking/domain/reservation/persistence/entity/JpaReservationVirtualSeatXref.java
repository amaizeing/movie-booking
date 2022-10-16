package com.datbv.booking.domain.reservation.persistence.entity;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;
import lombok.experimental.FieldNameConstants;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import static com.datbv.booking.config.Database.Booking.Schema;
import static com.datbv.booking.config.Database.Booking.Schema.ReservationSchema.Table.ReservationVirtualSeatXref;

@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldNameConstants
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@Table(schema = Schema.ReservationSchema.NAME, name = ReservationVirtualSeatXref.NAME)
public class JpaReservationVirtualSeatXref {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = ReservationVirtualSeatXref.Column.RESERVATION_ID,
            updatable = false, insertable = false, nullable = false)
    private long reservationId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = ReservationVirtualSeatXref.Column.RESERVATION_ID, nullable = false)
    private JpaReservation reservation;

    @Column(name = ReservationVirtualSeatXref.Column.VIRTUAL_SEAT_ID,
            updatable = false, insertable = false, nullable = false)
    private long virtualSeatId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = ReservationVirtualSeatXref.Column.VIRTUAL_SEAT_ID, nullable = false)
    private JpaVirtualSeat virtualSeat;

}

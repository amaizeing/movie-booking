package com.datbv.booking.domain.reservation.persistence.entity;

import com.datbv.booking.common.Identifier;
import com.datbv.booking.persistence.entity.Auditable;
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
import java.time.ZonedDateTime;

import static com.datbv.booking.config.Database.Booking.Schema;
import static com.datbv.booking.config.Database.Booking.Schema.ReservationSchema.Table.Reservation;


@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldNameConstants
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@Table(schema = Schema.ReservationSchema.NAME, name = Reservation.NAME)
public class JpaReservation extends Auditable implements Identifier {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = Reservation.Column.SHOW_ID, nullable = false, insertable = false, updatable = false)
    private long showId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = Reservation.Column.SHOW_ID, nullable = false)
    private JpaShow show;

    @Column(name = Reservation.Column.USER_ID, nullable = false)
    private long userId;

    @Column(name = Reservation.Column.BOOKED_TIME, nullable = false)
    private ZonedDateTime bookedTime;

}

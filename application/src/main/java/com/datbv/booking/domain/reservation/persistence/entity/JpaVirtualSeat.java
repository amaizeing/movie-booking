package com.datbv.booking.domain.reservation.persistence.entity;

import com.datbv.booking.domain.reservation.entity.VirtualSeatEntity;
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
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import static com.datbv.booking.config.Database.Booking.Schema;
import static com.datbv.booking.config.Database.Booking.Schema.ReservationSchema.Table.VirtualSeat;

@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldNameConstants
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@Table(schema = Schema.ReservationSchema.NAME, name = VirtualSeat.NAME)
public class JpaVirtualSeat extends Auditable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = VirtualSeat.Column.SHOW_ID,
            nullable = false, insertable = false, updatable = false)
    private long showId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = VirtualSeat.Column.SHOW_ID, nullable = false)
    private JpaShow show;

    @Column(name = VirtualSeat.Column.ROOM_ID, nullable = false)
    private long roomId;

    @Column(name = VirtualSeat.Column.PHYSICAL_SEAT_ID, nullable = false)
    private long physicalSeatId;

    @Column(name = VirtualSeat.Column.SEAT_CODE, length = 64)
    private String seatCode;

    @Builder.Default
    @Enumerated(EnumType.STRING)
    @Column(name = VirtualSeat.Column.STATUS, length = 32)
    private VirtualSeatEntity.Status status = VirtualSeatEntity.Status.AVAILABLE;

}

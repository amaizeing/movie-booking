package com.datbv.booking.domain.theater.persistence.entity;

import com.datbv.booking.domain.theater.entity.PhysicalSeatEntity;
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
import static com.datbv.booking.config.Database.Booking.Schema.TheaterSchema.Table.PhysicalSeat;


@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldNameConstants
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@Table(schema = Schema.TheaterSchema.NAME, name = PhysicalSeat.NAME)
public class JpaPhysicalSeat extends Auditable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = PhysicalSeat.Column.ROOM_ID, nullable = false, updatable = false, insertable = false)
    private long roomId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = PhysicalSeat.Column.ROOM_ID, nullable = false)
    private JpaRoom room;

    @Column(name = PhysicalSeat.Column.SEAT_CODE, nullable = false, length = 64)
    private String seatCode;

    @Enumerated(EnumType.STRING)
    @Column(name = PhysicalSeat.Column.TYPE, nullable = false, length = 64)
    private PhysicalSeatEntity.Type type;

}

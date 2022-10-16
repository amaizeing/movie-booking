package com.datbv.booking.domain.theater.persistence.entity;

import com.datbv.booking.domain.theater.entity.RoomEntity;
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
import static com.datbv.booking.config.Database.Booking.Schema.TheaterSchema.Table.Room;


@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldNameConstants
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@Table(schema = Schema.TheaterSchema.NAME, name = Room.NAME)
public class JpaRoom extends Auditable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = Room.Column.THEATER_ID, nullable = false, insertable = false, updatable = false)
    private long theaterId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = Room.Column.THEATER_ID, nullable = false)
    private JpaTheater theater;

    @Column(name = Room.Column.NAME, nullable = false)
    private String name;

    @Enumerated(EnumType.STRING)
    @Column(name = Room.Column.TYPE, nullable = false, length = 64)
    private RoomEntity.Type type;

}

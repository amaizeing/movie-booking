package com.datbv.booking.domain.reservation.persistence.entity;

import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.config.Database;
import com.datbv.booking.persistence.entity.Auditable;
import java.time.ZonedDateTime;
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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.LocalDateTime;

import static com.datbv.booking.config.Database.Booking.Schema;
import static com.datbv.booking.config.Database.Booking.Schema.ReservationSchema.Table.Show;

@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldNameConstants
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@Table(schema = Schema.ReservationSchema.NAME, name = Show.NAME)
public class JpaShow extends Auditable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = Show.Column.MOVIE_ID, nullable = false)
    private long movieId;

    @Column(name = Show.Column.ROOM_ID, nullable = false)
    private long roomId;

    @Column(name = Show.Column.THEATER_ID, nullable = false)
    private long theaterId;

    @Column(name = Show.Column.DESCRIPTION, columnDefinition = Database.ColumnDefinition.TEXT)
    private String description;

    @Enumerated(EnumType.STRING)
    @Column(name = Show.Column.TYPE, length = 32)
    private ShowEntity.Type type;

    @Column(name = Show.Column.START_TIME, nullable = false)
    private ZonedDateTime startTime;

    @Column(name = Show.Column.END_TIME, nullable = false)
    private ZonedDateTime endTime;

}

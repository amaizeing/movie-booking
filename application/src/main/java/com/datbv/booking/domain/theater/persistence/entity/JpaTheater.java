package com.datbv.booking.domain.theater.persistence.entity;

import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.config.Database;
import com.datbv.booking.persistence.entity.Auditable;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;
import lombok.experimental.FieldNameConstants;
import org.hibernate.annotations.Type;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import static com.datbv.booking.config.Database.Booking.Schema;
import static com.datbv.booking.config.Database.Booking.Schema.TheaterSchema.Table.Theater;


@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldNameConstants
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@Table(schema = Schema.TheaterSchema.NAME, name = Theater.NAME)
public class JpaTheater extends Auditable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = Theater.Column.CODE, nullable = false, length = 64)
    private String code;

    @Column(name = Theater.Column.NAME, nullable = false, length = 128)
    private String name;

    @Type(type = Database.TypeDefinition.JSONB)
    @Column(name = Theater.Column.ADDRESS, columnDefinition = Database.ColumnDefinition.JSONB, nullable = false)
    private TheaterEntity.Address address;

}

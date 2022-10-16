package com.datbv.booking.domain.movie.persistence.entity;

import com.datbv.booking.config.Database;
import com.datbv.booking.domain.movie.entity.MovieEntity;
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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.LocalDate;

import static com.datbv.booking.config.Database.Booking.Schema;
import static com.datbv.booking.config.Database.Booking.Schema.MovieSchema.Table.Movie;

@Getter
@Setter
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldNameConstants
@Accessors(chain = true)
@EqualsAndHashCode(callSuper = false)
@Table(schema = Schema.MovieSchema.NAME, name = Movie.NAME)
public class JpaMovie extends Auditable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = Movie.Column.NAME, nullable = false)
    private String name;

    @Column(name = Movie.Column.DESCRIPTION, columnDefinition = Database.ColumnDefinition.TEXT, nullable = false)
    private String description;

    @Column(name = Movie.Column.DURATION_IN_SECONDS, nullable = false)
    private long durationInSeconds;

    @Column(name = Movie.Column.RELEASE_DATE, nullable = false)
    private LocalDate releaseDate;

    @Enumerated(EnumType.STRING)
    @Column(name = Movie.Column.RATED, nullable = false, length = 64)
    private MovieEntity.Rated rated;

}

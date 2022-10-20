package com.datbv.booking.domain.movie.entity;

import com.datbv.booking.common.Identifier;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.time.Duration;
import java.time.LocalDate;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class MovieEntity implements Identifier {

    private long id;
    private String name;
    private String description;
    private Duration duration;
    private LocalDate releaseDate;
    private Rated rated;

    public enum Rated {
        P,
        G,
        PG,
        PG_13,
        C13,
        R,
        C16,
        NC_17,
        C18
    }

}

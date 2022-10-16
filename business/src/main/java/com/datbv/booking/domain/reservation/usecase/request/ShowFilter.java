package com.datbv.booking.domain.reservation.usecase.request;

import java.time.ZonedDateTime;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class ShowFilter {

    private Long movieId;
    private Long theaterId;
    private ZonedDateTime from;
    private ZonedDateTime toExclude;
}

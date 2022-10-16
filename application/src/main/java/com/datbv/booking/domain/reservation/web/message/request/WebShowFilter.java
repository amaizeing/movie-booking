package com.datbv.booking.domain.reservation.web.message.request;

import com.datbv.booking.domain.reservation.usecase.request.ShowFilter;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.val;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class WebShowFilter {

    private Long movieId;
    private Long theaterId;
    private LocalDate date;

    public ShowFilter mapToShowFilter() {

        val showFilter = ShowFilter.builder()
                .movieId(getMovieId())
                .theaterId(getTheaterId())
                .build();
        val now = ZonedDateTime.now();
        if (getDate() == null || getDate().equals(now.toLocalDate())) {
            return showFilter.setFrom(now)
                    .setToExclude(
                            now.toLocalDate().plusDays(1).atStartOfDay(ZoneId.systemDefault()));
        }

        return showFilter.setFrom(getDate().atStartOfDay().atZone(ZoneId.systemDefault()))
                .setToExclude(getDate().plusDays(1).atStartOfDay(ZoneId.systemDefault()));
    }

}

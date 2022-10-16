package com.datbv.booking.domain.reservation.usecase.request;

import com.datbv.booking.domain.reservation.entity.ShowEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CreateShowRequest {

    private long movieId;
    private long roomId;
    private String description;
    private ShowEntity.Type type;
    private LocalDateTime startTime;

}

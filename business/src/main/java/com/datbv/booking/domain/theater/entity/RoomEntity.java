package com.datbv.booking.domain.theater.entity;

import com.datbv.booking.common.Identifier;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RoomEntity implements Identifier {

    private long id;
    private long theaterId;
    private String name;
    private Type type;

    public enum Type {
        T_2D,
        T_2D_GOLD_CLASS,
        T_3D,
        T_3D_GOLD_CLASS,
        T_IMAX,
        T_LOUNGE
    }

}

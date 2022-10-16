package com.datbv.booking.common.util;

import lombok.experimental.UtilityClass;

import java.util.Arrays;
import java.util.Objects;

@UtilityClass
public final class ArrayUtil {

    public <T> boolean isEmpty(final T[] array) {
        return array == null || array.length == 0 || Arrays.stream(array).noneMatch(Objects::nonNull);
    }

}

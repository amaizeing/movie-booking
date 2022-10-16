package com.datbv.booking.common.util;

import lombok.experimental.UtilityClass;
import lombok.val;

@UtilityClass
public final class Strings {

    public final String EMPTY = "";

    public String join(final String delimiter, final Object... values) {
        if (ArrayUtil.isEmpty(values)) {
            return EMPTY;
        }

        val builder = new StringBuilder();
        var builderIsEmpty = true;
        for (final Object value : values) {
            if (value == null || (value instanceof String string && string.isBlank())) {
                continue;
            }
            if (!builderIsEmpty) {
                builder.append(delimiter);
            }
            builder.append(value.toString().strip());
            builderIsEmpty = false;
        }
        return builder.toString();
    }

    public String orEmpty(final Object value) {
        if (value == null) {
            return EMPTY;
        }
        return value.toString().strip();
    }

}

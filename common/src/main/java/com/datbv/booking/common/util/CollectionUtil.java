package com.datbv.booking.common.util;

import com.datbv.booking.common.Identifier;
import lombok.NonNull;
import lombok.experimental.UtilityClass;

import java.util.*;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Collectors;

@UtilityClass
public final class CollectionUtil {

    public boolean isEmpty(final Collection<?> collection) {
        return collection == null || collection.isEmpty() || collection.stream().noneMatch(Objects::nonNull);
    }

    public boolean notEmpty(final Collection<?> collection) {
        return !isEmpty(collection);
    }

    public <K, V> Collector<Map.Entry<K, List<V>>, ?, Map<K, List<V>>> toMapWithNonNullValues() {
        return Collectors.toMap(Map.Entry::getKey, entry -> entry.getValue().stream()
                .filter(Objects::nonNull).toList());
    }

    public <V extends Identifier> Collector<V, ?, Map<Long, V>> toMapIdWithIdentity() {
        return Collectors.toMap(Identifier::getId, Function.identity());
    }

    public <E extends Identifier> Map<Long, E> toMapIdWithIdentity(final Collection<E> elements) {
        return elements.stream().collect(toMapIdWithIdentity());
    }

    public <I, O> Set<O> setOf(@NonNull Collection<I> collection, @NonNull Function<I, O> mapper) {
        if (isEmpty(collection)) {
            return Set.of();
        }
        return collection.stream()
                .filter(Objects::nonNull)
                .map(mapper)
                .filter(Objects::nonNull)
                .collect(Collectors.toUnmodifiableSet());
    }

    public static <I, O> List<O> listOf(@NonNull Collection<I> collection, @NonNull Function<I, O> mapper) {
        if (isEmpty(collection)) {
            return List.of();
        }
        return collection.stream()
                .filter(Objects::nonNull)
                .map(mapper)
                .filter(Objects::nonNull).toList();
    }

    public <I extends Identifier> List<Long> idsOf(@NonNull Collection<I> collection) {
        if (isEmpty(collection)) {
            return List.of();
        }
        return collection.stream()
                .filter(Objects::nonNull)
                .map(Identifier::getId).toList();
    }

}

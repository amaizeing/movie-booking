package com.datbv.booking.common.model;

import lombok.*;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Collectors;

@Getter
@Builder
@RequiredArgsConstructor(access = AccessLevel.PACKAGE)
public class PageData<E> {

    private final List<E> content;
    private final Long totalElements;
    private final Integer pageNumber;
    private final Integer pageSize;

    public static <T> PageData<T> of(final Collection<T> content) {
        val pageContent = Optional.ofNullable(content)
                .map(LinkedList::new)
                .orElse(new LinkedList<>());
        return PageData.<T>builder().content(pageContent).build();
    }

    public <T> PageData<T> map(final Function<E, T> mapper) {
        val newContent = content.stream().map(mapper).toList();
        return PageData.<T>builder()
                .content(newContent)
                .totalElements(totalElements)
                .pageSize(pageSize)
                .pageNumber(pageNumber)
                .build();
    }

    @Getter
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    public static class PageRequest {

        private final int page;
        private final int size;
        private Sorting sorting;

        public static PageRequest of(final int page, final int size) {
            return new PageRequest(page, size, null);
        }

        public static PageRequest of(final int page, final int size, final Sorting sorting) {
            return new PageRequest(page, size, sorting);
        }

        public PageRequest sort(final Sorting.Order... orders) {
            if (sorting == null) {
                sorting = new Sorting();
            }
            sorting.and(orders);
            return this;
        }

        public List<Sorting.Order> getSortingOrders() {
            return Optional.ofNullable(sorting).map(Sorting::getOrders).orElse(List.of());
        }

    }

    @Getter
    @NoArgsConstructor(access = AccessLevel.PRIVATE)
    public static class Sorting {

        private final List<Order> orders = new LinkedList<>();

        public static Sorting of(final Order order) {
            return new Sorting().and(order);
        }

        public Sorting and(final Order... orders) {
            this.orders.addAll(List.of(orders));
            return this;
        }

        @Getter
        @RequiredArgsConstructor(access = AccessLevel.PRIVATE)
        public static class Order {

            private final String property;
            private final Direction direction;

            public static Order asc(final String property) {
                return new Order(property, Direction.ASC);
            }

            public static Order desc(final String property) {
                return new Order(property, Direction.DESC);
            }

        }

        public enum Direction {
            ASC, DESC
        }

    }

}

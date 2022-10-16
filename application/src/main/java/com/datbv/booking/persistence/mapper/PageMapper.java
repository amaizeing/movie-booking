package com.datbv.booking.persistence.mapper;

import com.datbv.booking.common.model.PageData;
import lombok.val;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface PageMapper {

    default PageRequest toJpaPageRequest(final PageData.PageRequest pageRequest) {
        if (pageRequest.getSorting() == null) {
            return PageRequest.of(pageRequest.getPage(), pageRequest.getSize());
        }

        val sorts = pageRequest.getSortingOrders()
                .stream()
                .map(order -> new Sort.Order(toDirection(order.getDirection()), order.getProperty()))
                .toList();

        return PageRequest.of(pageRequest.getPage(), pageRequest.getSize(), Sort.by(sorts));
    }

    private Sort.Direction toDirection(final PageData.Sorting.Direction direction) {
        return Sort.Direction.fromString(direction.name());
    }

    default <E> PageData<E> toPageData(final List<E> elements) {
        return PageData.<E>builder()
                .content(elements)
                .build();
    }

    default <E> PageData<E> toPageData(final Page<?> page, final List<E> elements) {
        return PageData.<E>builder()
                .content(elements)
                .totalElements(page.getTotalElements())
                .pageNumber(page.getPageable().getPageNumber())
                .pageSize(page.getPageable().getPageSize())
                .build();
    }


}

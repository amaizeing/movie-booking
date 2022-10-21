package com.datbv.booking.domain.reservation.persistence.repository;

import com.datbv.booking.domain.reservation.persistence.entity.JpaReservation;
import com.datbv.booking.domain.reservation.persistence.entity.JpaShow;
import com.datbv.booking.domain.reservation.usecase.request.ReservationFilter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.criteria.Predicate;
import java.util.LinkedList;
import java.util.List;

@Slf4j
@Repository
@RequiredArgsConstructor
non-sealed class CustomJpaReservationRepositoryImpl implements CustomJpaReservationRepository {

    private final EntityManager em;

    @Override
    public List<JpaReservation> findByFilter(final ReservationFilter filter) {
        val cb = em.getCriteriaBuilder();
        val cq = cb.createQuery(JpaReservation.class);
        val root = cq.from(JpaReservation.class);
        root.fetch(JpaReservation.Fields.show);

        val predicates = new LinkedList<Predicate>();
        predicates.add(cb.equal(root.get(JpaReservation.Fields.userId), filter.getUserId()));

        if (filter.getReservationId() != null) {
            predicates.add(cb.equal(root.get(JpaReservation.Fields.id), filter.getReservationId()));
        }
        cq.where(predicates.toArray(new Predicate[0]));
        cq.orderBy(cb.asc(root.get(JpaReservation.Fields.show).get(JpaShow.Fields.startTime)),
                cb.asc(root.get(JpaReservation.Fields.bookedTime)));
        return em.createQuery(cq).getResultList();
    }

}

package com.datbv.booking.domain.reservation.persistence.repository;

import com.datbv.booking.domain.reservation.persistence.entity.JpaShow;
import com.datbv.booking.domain.reservation.usecase.request.ShowFilter;
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
non-sealed class CustomJpaShowRepositoryImpl implements CustomJpaShowRepository {

    private final EntityManager em;

    @Override
    public List<JpaShow> findAllAvailableShows(final ShowFilter filter) {

        val cb = em.getCriteriaBuilder();
        val cq = cb.createQuery(JpaShow.class);
        val root = cq.from(JpaShow.class);

        val predicates = new LinkedList<Predicate>();

        if (filter.getTheaterId() != null) {
            predicates.add(cb.equal(root.get(JpaShow.Fields.theaterId), filter.getTheaterId()));
        }

        if (filter.getMovieId() != null) {
            predicates.add(cb.equal(root.get(JpaShow.Fields.movieId), filter.getMovieId()));
        }

        if (filter.getFrom() != null) {
            predicates.add(cb.greaterThanOrEqualTo(root.get(JpaShow.Fields.startTime), filter.getFrom()));
        }

        if (filter.getToExclude() != null) {
            predicates.add(cb.lessThan(root.get(JpaShow.Fields.startTime), filter.getToExclude()));
        }

        cq.where(predicates.toArray(new Predicate[0]))
                .orderBy(cb.asc(root.get(JpaShow.Fields.movieId)),
                        cb.asc(root.get(JpaShow.Fields.startTime)));

        return em.createQuery(cq).getResultList();
    }

}

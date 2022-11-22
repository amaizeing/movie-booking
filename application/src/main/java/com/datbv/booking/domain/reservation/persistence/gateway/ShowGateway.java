package com.datbv.booking.domain.reservation.persistence.gateway;

import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.reservation.persistence.mapper.PersistenceShowMapper;
import com.datbv.booking.domain.reservation.persistence.repository.JpaShowRepository;
import com.datbv.booking.domain.reservation.repository.query.QueryShowGateway;
import com.datbv.booking.domain.reservation.usecase.request.ShowFilter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.util.List;
import java.util.Optional;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class ShowGateway implements QueryShowGateway {

    private final JpaShowRepository showRepository;

    private final PersistenceShowMapper showMapper;

    @Override
    public List<ShowEntity> findAllAvailableShows(final ShowFilter filter) {
        val shows = showRepository.findAllAvailableShows(filter);
        return showMapper.mapToShowEntities(shows);
    }

    @Override
    public Optional<ShowEntity> findById(long id) {
        return showRepository.findById(id).map(showMapper::mapToShowEntity);
    }

}

package com.datbv.booking.domain.reservation.persistence.gateway;

import com.datbv.booking.domain.reservation.entity.ShowEntity;
import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.reservation.persistence.mapper.PersistenceShowMapper;
import com.datbv.booking.domain.reservation.persistence.repository.JpaShowRepository;
import com.datbv.booking.domain.reservation.repository.query.QueryShowDataGateway;
import com.datbv.booking.domain.reservation.usecase.request.ShowFilter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.util.List;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class ShowDataGateway implements QueryShowDataGateway {

    private final JpaShowRepository showRepository;

    private final PersistenceShowMapper showMapper;

    @Override
    public List<ShowEntity> findAllAvailableShows(final ShowFilter filter) {
        val shows = showRepository.findAllAvailableShows(filter);
        return showMapper.mapToShowEntities(shows);
    }

}

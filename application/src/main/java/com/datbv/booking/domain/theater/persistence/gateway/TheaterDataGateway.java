package com.datbv.booking.domain.theater.persistence.gateway;

import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.theater.persistence.mapper.PersistenceTheaterMapper;
import com.datbv.booking.domain.theater.persistence.repo.JpaTheaterRepository;
import com.datbv.booking.domain.theater.repository.query.QueryTheaterDataGateway;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class TheaterDataGateway implements QueryTheaterDataGateway {

    private final JpaTheaterRepository theaterRepository;

    private final PersistenceTheaterMapper theaterMapper;

    @Override
    public Optional<TheaterEntity> findById(long id) {
        return theaterRepository.findById(id).map(theaterMapper::mapToTheaterEntity);
    }

    @Override
    public List<TheaterEntity> findByIds(Collection<Long> ids) {
        val theaters = theaterRepository.findByIds(ids);
        return theaterMapper.mapToTheaterEntities(theaters);
    }
}

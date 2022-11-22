package com.datbv.booking.domain.theater.persistence.gateway;

import com.datbv.booking.domain.reservation.persistence.config.DataGateway;
import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.theater.persistence.mapper.PersistenceTheaterMapper;
import com.datbv.booking.domain.theater.persistence.repo.JpaTheaterRepository;
import com.datbv.booking.domain.theater.repository.query.QueryTheaterGateway;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import lombok.val;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Slf4j
@DataGateway
@RequiredArgsConstructor
public class TheaterGateway implements QueryTheaterGateway {

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

    @Override
    public List<TheaterEntity> findAll() {
        val theaters = theaterRepository.findAll();
        return theaterMapper.mapToTheaterEntities(theaters);
    }

}

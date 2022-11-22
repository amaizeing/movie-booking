package com.datbv.booking.domain.theater.repository.query;

import com.datbv.booking.domain.theater.entity.TheaterEntity;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

public interface QueryTheaterGateway {

  Optional<TheaterEntity> findById(final long id);

  List<TheaterEntity> findByIds(final Collection<Long> ids);

    List<TheaterEntity> findAll();

}

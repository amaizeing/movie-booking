package com.datbv.booking.domain.theater.usecase;

import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.theater.repository.query.QueryTheaterDataGateway;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class QueryTheaterUseCase {

  private final QueryTheaterDataGateway theaterQuery;

  public Optional<TheaterEntity> getTheaterById(final long id) {
    return theaterQuery.findById(id);
  }

  public List<TheaterEntity> getTheatersByIds(final Collection<Long> ids) {
    return theaterQuery.findByIds(ids);
  }
}

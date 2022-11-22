package com.datbv.booking.domain.theater.usecase;

import com.datbv.booking.domain.theater.entity.TheaterEntity;
import com.datbv.booking.domain.theater.repository.query.QueryTheaterGateway;
import lombok.RequiredArgsConstructor;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

@RequiredArgsConstructor
public class GetTheaterUseCase {

  private final QueryTheaterGateway theaterQuery;

  public List<TheaterEntity> getAll() {
    return theaterQuery.findAll();
  }

  public Optional<TheaterEntity> getTheaterById(final long id) {
    return theaterQuery.findById(id);
  }

  public List<TheaterEntity> getTheatersByIds(final Collection<Long> ids) {
    return theaterQuery.findByIds(ids);
  }
}

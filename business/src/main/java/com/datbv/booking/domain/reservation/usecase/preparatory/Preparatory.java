package com.datbv.booking.domain.reservation.usecase.preparatory;

public interface Preparatory<I, O> {

    O prepare(I input);

}

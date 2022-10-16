package com.datbv.booking.domain.user.persistance.repository;

import com.datbv.booking.domain.user.persistance.entity.JpaUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface JpaUserRepository extends JpaRepository<JpaUser, Long> {

    Optional<JpaUser> findByPhoneNumber(final String phoneNumber);
}

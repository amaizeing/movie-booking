ALTER DATABASE booking SET timezone TO 'Asia/Bangkok';
set timezone TO 'Asia/Bangkok';

-- User schema & table ddl
create schema scm_user;

create table scm_user.platform_user
(
    id                  bigserial                       not null    primary key,
    phone_number        varchar(64)                     not null    unique,
    full_name           varchar(255)                    not null,
    email               varchar(64),
    created_time        timestamp with time zone        not null,
    updated_time        timestamp with time zone        not null
);

-- Theater schema & table ddl

create schema scm_theater;

create table scm_theater.theater
(
    id                  bigserial                       not null    primary key,
    code                varchar(64)                     not null,
    name                varchar(128)                    not null,
    address             jsonb                           not null,
    created_time        timestamp with time zone        not null,
    updated_time        timestamp with time zone        not null
);

create table scm_theater.room
(
    id                  bigserial                       not null    primary key,
    theater_id          bigint                          not null,
    name                varchar(255)                    not null,
    type                varchar(64)                     not null,
    created_time        timestamp with time zone        not null,
    updated_time        timestamp with time zone        not null
);

create table scm_theater.physical_seat
(
    id                  bigserial                       not null    primary key,
    room_id             bigint                          not null,
    seat_code           varchar(64)                     not null,
    type                varchar(64)                     not null,
    created_time        timestamp with time zone        not null,
    updated_time        timestamp with time zone        not null
);

-- Theater schema & table ddl

create schema scm_movie;

create table scm_movie.movie
(
    id                  bigserial                       not null    primary key,
    name                varchar(255)                    not null,
    description         text                            not null,
    duration_in_seconds bigint                          not null,
    rated               varchar(64)                     not null,
    release_date        date                            not null,
    created_time        timestamp with time zone        not null,
    updated_time        timestamp with time zone        not null
);

-- Reservation schema & table ddl

create schema scm_reservation;

create table scm_reservation.platform_show
(
    id                  bigserial                       not null    primary key,
    theater_id          bigint                          not null,
    room_id             bigint                          not null,
    movie_id            bigint                          not null,
    description         text,
    type                varchar(32),
    start_time          timestamp with time zone        not null,
    end_time            timestamp with time zone        not null,
    created_time        timestamp with time zone        not null,
    updated_time        timestamp with time zone        not null
);

create table scm_reservation.virtual_seat
(
    id                  bigserial                       not null    primary key,
    show_id             bigint                          not null,
    room_id             bigint                          not null,
    physical_seat_id    bigint                          not null,
    seat_code           varchar(64)                     not null,
    status              varchar(32)                     not null,
    type                varchar(64)                     not null,
    created_time        timestamp with time zone        not null,
    updated_time        timestamp with time zone        not null
);

create table scm_reservation.reservation
(
    id                  bigserial                       not null    primary key,
    show_id             bigint                          not null,
    user_id             bigint                          not null,
    booked_time         timestamp with time zone        not null,
    created_time        timestamp with time zone        not null,
    updated_time        timestamp with time zone        not null
);

create table scm_reservation.reservation_virtual_seat_xref
(
    id                  bigserial                       not null    primary key,
    reservation_id      bigint                          not null,
    virtual_seat_id     bigint                          not null
);

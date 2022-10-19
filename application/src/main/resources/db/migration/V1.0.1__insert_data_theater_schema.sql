-- INSERT CGV Ha Dong theater

insert into scm_theater.theater(code, name, address, created_time, updated_time)
    values('CGV001', 'CGV Aeon Hà Đông', '{"city": "Hà Nội", "district": "Hà Đông", "ward": "Dương Nội", "detail": "Đường Ngô Thì Nhậm"}', now(), now());

-- INSERT CGV Ha Dong room
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV001'), '001', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV001'), '002', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV001'), '003', 'T_2D_GOLD_CLASS', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV001'), '004', 'T_IMAX', now(), now());

-- INSERT CGV Ha Dong seat for room 001
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C08', 'NORMAL', now(), now());

-- INSERT CGV Ha Dong seat for room 002
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C08', 'NORMAL', now(), now());

-- INSERT CGV Ha Dong seat for room 003
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A12', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B12', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C12', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D12', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E12', 'NORMAL', now(), now());

-- INSERT CGV Ha Dong seat for room 004
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'A12', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'B12', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'C12', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'D12', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV001')),
           'E12', 'NORMAL', now(), now());

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

-- INSERT CGV Indochina Plaza Ha Noi
insert into scm_theater.theater(code, name, address, created_time, updated_time)
    values('CGV002', 'CGV Indochina Plaza Hà Nội', '{"city": "Hà Nội", "district": "Cầu Giấy", "ward": "Dịch Vọng Hậu", "detail": "241 Xuân Thủy"}', now(), now());

-- INSERT CGV Indochina Plaza Ha Noi room
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV002'), '001', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV002'), '002', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV002'), '003', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV002'), '004', 'T_3D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV002'), '005', 'T_IMAX', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV002'), '006', 'T_LOUNGE', now(), now());

-- INSERT CGV Indochina Plaza Ha Noi seat for room 001
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J18', 'NORMAL', now(), now());

-- INSERT CGV Indochina Plaza Ha Noi seat for room 002
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C08', 'NORMAL', now(), now());

-- INSERT CGV Indochina Plaza Ha Noi seat for room 003
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C08', 'NORMAL', now(), now());

-- INSERT CGV Indochina Plaza Ha Noi seat for room 004
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J18', 'NORMAL', now(), now());

-- INSERT CGV Indochina Plaza Ha Noi seat for room 005
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J18', 'NORMAL', now(), now());

-- INSERT CGV Indochina Plaza Ha Noi seat for room 006
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'J18', 'NORMAL', now(), now());

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

-- INSERT CGV Vincom Royal City
insert into scm_theater.theater(code, name, address, created_time, updated_time)
    values('CGV003', 'CGV Vincom Royal City', '{"city": "Hà Nội", "district": "Thanh Xuân", "ward": "Thượng Đình", "detail": "74 Nguyễn Trãi"}', now(), now());

-- INSERT CGV Vincom Royal City room
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '001', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '002', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '003', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '004', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '005', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '006', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '007', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '008', 'T_3D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '009', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '010', 'T_3D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '011', 'T_LOUNGE', now(), now());

-- INSERT CGV Vincom Royal City seat for room 001
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());

-- INSERT CGV Vincom Royal City seat for room 002
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '002'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());

-- INSERT CGV Vincom Royal City seat for room 003
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '003'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());


-- INSERT CGV Vincom Royal City seat for room 004
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '004'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());

-- INSERT CGV Vincom Royal City seat for room 005
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '005'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());

-- INSERT CGV Vincom Royal City seat for room 006
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '006'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J18', 'NORMAL', now(), now());

-- INSERT CGV Vincom Royal City seat for room 007
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '007'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J18', 'NORMAL', now(), now());

-- INSERT CGV Vincom Royal City seat for room 008
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '008'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J18', 'NORMAL', now(), now());

-- INSERT CGV Vincom Royal City seat for room 009
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '009'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J18', 'NORMAL', now(), now());

-- INSERT CGV Vincom Royal City seat for room 010
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '010'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J18', 'NORMAL', now(), now());

-- INSERT CGV Vincom Royal City seat for room 011
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'A18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'B18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'C18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'D18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'E18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'F18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'G18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H06', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H07', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H08', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H09', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H10', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H11', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H12', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H13', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H14', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'H18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'I18', 'NORMAL', now(), now());

insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J01', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J02', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J03', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J04', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J05', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J06', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J07', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J08', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J09', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J10', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J11', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J12', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J13', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J14', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J15', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J16', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J17', 'NORMAL', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '011'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV003')),
           'J18', 'NORMAL', now(), now());

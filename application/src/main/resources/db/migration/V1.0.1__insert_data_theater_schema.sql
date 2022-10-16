-- INSERT CGV Ha Dong theater

insert into scm_theater.theater(code, name, address, created_time, updated_time)
    values('CGV001', 'CGV Aeon Hà Đông', '{"city": "Hà Nội", "district": "Hà Đông", "ward": "Dương Nội", "detail": "Đường Ngô Thì Nhậm"}', now(), now());

-- INSERT CGV Ha Dong room
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV001'), '001', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV001'), '002', 'T_2D_GOLD_CLASS', now(), now());

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


-- INSERT CGV Indochina Plaza Ha Noi
insert into scm_theater.theater(code, name, address, created_time, updated_time)
    values('CGV002', 'CGV Indochina Plaza Hà Nội', '{"city": "Hà Nội", "district": "Cầu Giấy", "ward": "Dịch Vọng Hậu", "detail": "241 Xuân Thủy"}', now(), now());

-- INSERT CGV Indochina Plaza Ha Noi room
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV002'), '001', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV002'), '002', 'T_3D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV002'), '003', 'T_LOUNGE', now(), now());

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
           'B03', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B04', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B05', 'VIP', now(), now());
insert into scm_theater.physical_seat(room_id, seat_code, type, created_time, updated_time)
    values((select r.id from scm_theater.room r
                where r.name = '001'
                and r.theater_id = (select t.id from scm_theater.theater t where t.code = 'CGV002')),
           'B06', 'VIP', now(), now());
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


-- INSERT CGV Vincom Royal City
insert into scm_theater.theater(code, name, address, created_time, updated_time)
    values('CGV003', 'CGV Vincom Royal City', '{"city": "Hà Nội", "district": "Thanh Xuân", "ward": "Thượng Đình", "detail": "74 Nguyễn Trãi"}', now(), now());

-- INSERT CGV Vincom Royal City room
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '001', 'T_2D', now(), now());
insert into scm_theater.room(theater_id, name, type, created_time, updated_time)
    values((select t.id from scm_theater.theater t where t.code = 'CGV003'), '002', 'T_IMAX', now(), now());

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

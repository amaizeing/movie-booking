package com.datbv.booking;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import lombok.val;

public class SqlGenerator {

    private static final String INSERT_PLATFORM_SHOW = """
            INSERT INTO scm_reservation.platform_show(theater_id, room_id, movie_id, 
                description, type, start_time, end_time, created_time, updated_time)
            VALUES(%s, %s, %s, '%s', '%s', '%s', '%s', now(), now());""";

    public static void main(String[] args) {

        val dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        var beginTime = LocalDateTime.of(2022, 10, 20, 10, 0, 0);
        for (int i = 1; i <= 5; i++) {
            val query = String.format(INSERT_PLATFORM_SHOW,
                    "1", "1", "1", "", "NORMAL_SHOW",
                    beginTime.format(dtf) + " +07:00",
                    beginTime.plusHours(2).plusMinutes(30).format(dtf) + " +07:00");
            System.out.println(query);
            beginTime = beginTime.plusHours(3);
        }
        System.out.println();

        beginTime = LocalDateTime.of(2022, 10, 20, 10, 0, 0);
        for (int i = 0; i < 5; i++) {
            val query = String.format(INSERT_PLATFORM_SHOW,
                    "1", "2", "2", "", "NORMAL_SHOW",
                    beginTime.format(dtf) + " +07:00",
                    beginTime.plusHours(2).plusMinutes(30).format(dtf) + " +07:00");
            System.out.println(query);
            beginTime = beginTime.plusHours(3);
        }
        System.out.println();

        beginTime = LocalDateTime.of(2022, 10, 20, 10, 30, 0);
        for (int i = 0; i < 5; i++) {
            val query = String.format(INSERT_PLATFORM_SHOW,
                    "2", "3", "3", "", "NORMAL_SHOW",
                    beginTime.format(dtf) + " +07:00",
                    beginTime.plusHours(2).plusMinutes(30).format(dtf) + " +07:00");
            System.out.println(query);
            beginTime = beginTime.plusHours(3);
        }
        System.out.println();

        beginTime = LocalDateTime.of(2022, 10, 20, 11, 30, 0);
        for (int i = 0; i < 3; i++) {
            val query = String.format(INSERT_PLATFORM_SHOW,
                    "2", "4", "4", "", "NORMAL_SHOW",
                    beginTime.format(dtf) + " +07:00",
                    beginTime.plusHours(3).plusMinutes(30).format(dtf) + " +07:00");
            System.out.println(query);
            beginTime = beginTime.plusHours(3);
        }
        System.out.println();
    }
}

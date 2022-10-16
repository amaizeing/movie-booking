package com.datbv.booking.config;

import lombok.experimental.UtilityClass;

@UtilityClass
public class Database {

    @UtilityClass
    public static class TypeDefinition {

        public final String JSON = "json";
        public final String JSONB = "jsonb";

    }

    @UtilityClass
    public static class ColumnDefinition {

        public final String JSON = "json";
        public final String JSONB = "jsonb";
        public final String TEXT = "text";

    }

    @UtilityClass
    public static class Booking {

        @UtilityClass
        public static class Schema {

            @UtilityClass
            public static class MovieSchema {

                public final String NAME = "scm_movie";

                @UtilityClass
                public static class Table {

                    @UtilityClass
                    public static class Movie {

                        public final String NAME = "movie";

                        @UtilityClass
                        public static class Column {

                            public final String NAME = "name";
                            public final String DESCRIPTION = "description";
                            public final String DURATION_IN_SECONDS = "duration_in_seconds";
                            public final String RELEASE_DATE = "release_date";
                            public final String RATED = "rated";

                        }

                    }

                }

            }

            @UtilityClass
            public static class UserSchema {

                public final String NAME = "scm_user";

                @UtilityClass
                public static class Table {

                    @UtilityClass
                    public static class User {

                        public final String NAME = "platform_user";

                        @UtilityClass
                        public static class Column {

                            public final String PHONE_NUMBER = "phone_number";
                            public final String FULL_NAME = "full_name";
                            public final String EMAIL = "email";

                        }

                    }

                }

            }

            @UtilityClass
            public static class TheaterSchema {

                public final String NAME = "scm_theater";

                @UtilityClass
                public static class Table {

                    @UtilityClass
                    public static class Theater {

                        public final String NAME = "theater";

                        @UtilityClass
                        public static class Column {

                            public final String CODE = "code";
                            public final String NAME = "name";
                            public final String ADDRESS = "address";

                        }

                    }

                    @UtilityClass
                    public static class Room {

                        public final String NAME = "room";

                        @UtilityClass
                        public static class Column {

                            public final String NAME = "name";
                            public final String TYPE = "type";
                            public final String THEATER_ID = "theater_id";

                        }

                    }

                    @UtilityClass
                    public static class PhysicalSeat {

                        public final String NAME = "physical_seat";

                        @UtilityClass
                        public static class Column {

                            public final String ROOM_ID = "room_id";
                            public final String SEAT_CODE = "seat_code";
                            public final String TYPE = "type";

                        }

                    }

                }

            }

            @UtilityClass
            public static class ReservationSchema {

                public final String NAME = "scm_reservation";

                @UtilityClass
                public static class Table {

                    @UtilityClass
                    public static class Show {

                        public final String NAME = "platform_show";

                        @UtilityClass
                        public static class Column {

                            public final String MOVIE_ID = "movie_id";
                            public final String ROOM_ID = "room_id";
                            public final String START_TIME = "start_time";
                            public final String END_TIME = "end_time";
                            public final String DESCRIPTION = "description";
                            public final String TYPE = "type";
                            public final String THEATER_ID = "theater_id";

                        }

                    }

                    @UtilityClass
                    public static class VirtualSeat {

                        public final String NAME = "virtual_seat";

                        @UtilityClass
                        public static class Column {

                            public final String SHOW_ID = "show_id";
                            public final String ROOM_ID = "room_id";
                            public final String PHYSICAL_SEAT_ID = "physical_seat_id";
                            public final String SEAT_CODE = "seat_code";
                            public final String STATUS = "status";

                        }

                    }

                    @UtilityClass
                    public static class Reservation {

                        public final String NAME = "reservation";

                        @UtilityClass
                        public static class Column {

                            public final String SHOW_ID = "show_id";
                            public final String USER_ID = "user_id";
                            public final String BOOKED_TIME = "booked_time";

                        }

                    }

                    @UtilityClass
                    public static class ReservationVirtualSeatXref {

                        public final String NAME = "reservation_virtual_seat_xref";

                        @UtilityClass
                        public static class Column {

                            public final String RESERVATION_ID = "reservation_id";
                            public final String VIRTUAL_SEAT_ID = "virtual_seat_id";

                        }

                    }

                }

            }

        }

    }

}

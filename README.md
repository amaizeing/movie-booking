# Movie Booking app with Clean architecture

`java17` `spring-boot:2.7.4` `postgres14`

### I. Purpose

TBD

### II. Clean architecture introduction

TBD

### III. Build & Run

#### 1) Start docker:
```shell
$ cd docker
$ docker-compose up
```

#### 2) Build application:
```shell
$ ./mvnw clean install -U spring-boot::repackage -DskipTests
```

#### 3) Run application:
```shell
$ java -jar application/target/application-1.0-SNAPSHOT.jar
```

#### 4) Access Swagger API Document [here](http://localhost:9123/swagger-ui/#) and try.

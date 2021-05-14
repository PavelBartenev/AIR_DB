create schema air_travels_db

create table air_travels_db.aircraft
(
    aircraft_id serial not null,
    model text not null,
    num_of_seats int,
    num_of_floors int not null,
    manufacturer_id int,
    airline int
);

create unique index aircraft_id_index
        on air_travels_db.aircraft (aircraft_id);

alter table air_travels_db.aircraft
        add constraint aircraft_pk
            primary key (aircraft_id);

create table air_travels_db.manufacturer
(
    manufacturer_id serial not null,
    name text not null,
    annual_revenue int,
    country_id int not null
);

create unique index manufacturer_id_index
        on air_travels_db.manufacturer (manufacturer_id);

alter table air_travels_db.manufacturer
        add constraint manufacturer_pk
            primary key (manufacturer_id);

create table air_travels_db.flight
(
    flight_id serial not null,
    departure_airport int not null,
    arrival_airport int not null,
    aircraft_id int not null
);

create unique index flight_id_index
        on air_travels_db.flight (flight_id);

alter table air_travels_db.flight
        add constraint flight_pk
            primary key (flight_id);

create table air_travels_db.airport
(
  airport_id serial not null,
  name text not null,
  country_id int not null,
  passengers_per_year int
);

create unique index airport_id_index
        on air_travels_db.airport (airport_id);

alter table air_travels_db.airport
        add constraint airport_pk
            primary key (airport_id);

create table air_travels_db.country
(
    country_id serial not null,
    country_name text not null
);

create unique index country_id_index
        on air_travels_db.country (country_id);

alter table air_travels_db.country
        add constraint country_pk
            primary key (country_id);


create table air_travels_db.airline
(
    airline_id serial not null,
    passengers_per_year int,
    num_of_aircrafts int,
    alliance_id int,
    name text
);

create unique index airline_id_index
        on air_travels_db.airline (airline_id);

alter table air_travels_db.airline
        add constraint airline_pk
            primary key (airline_id);

create table air_travels_db.alliance
(
    alliance_id serial not null,
    num_of_airlines int,
    foundation_date date not null,
    name text
);

create unique index alliance_id_index
        on air_travels_db.alliance (alliance_id);

alter table air_travels_db.alliance
        add constraint alliance_pk
            primary key (alliance_id);

create table air_travels_db.tweet
(
    tweet_id serial not null,
    author_name text not null,
    satisfaction int,
    flight_id int not null
);

create unique index tweet_id_index
        on air_travels_db.tweet (tweet_id);

create table air_travels_db.prices
(
    price_id serial not null,
    flight_id int not null,
    class text not null,
    price int
);

create unique index prices_id_index
        on air_travels_db.prices (price_id);

alter table air_travels_db.prices
        add constraint prices_pk
            primary key (price_id);

alter table air_travels_db.prices
        add constraint class_check
            CHECK ( class IN ('economy', 'comfort', 'business') );

alter table air_travels_db.tweet
        add constraint tweet_pk
            primary key (tweet_id);


alter table air_travels_db.aircraft
        add constraint manufacturer_id
            foreign key (manufacturer_id) references air_travels_db.manufacturer,
        add constraint airline_id
            foreign key (airline) references air_travels_db.airline;


alter table air_travels_db.flight
        add constraint arrival_airport
            foreign key (arrival_airport) references air_travels_db.airport,
        add constraint departure_airport
            foreign key (departure_airport) references air_travels_db.airport,
        add constraint aircraft
            foreign key (aircraft_id) references air_travels_db.aircraft;


alter table air_travels_db.tweet
        add constraint flight
            foreign key (flight_id) references air_travels_db.flight;

alter table air_travels_db.airline
        add constraint alliance
            foreign key (alliance_id) references air_travels_db.alliance;


alter table air_travels_db.prices
        add constraint flight
            foreign key (flight_id) references air_travels_db.flight;


alter table air_travels_db.airport
        add constraint country
            foreign key (country_id) references air_travels_db.country;

alter table air_travels_db.manufacturer
        add constraint country
            foreign key (country_id) references air_travels_db.country;

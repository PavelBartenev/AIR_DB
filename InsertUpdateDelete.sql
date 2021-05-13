insert into air_travels_db.country(country_name) values ('US');
insert into air_travels_db.country(country_name) values ('EU');
insert into air_travels_db.country(country_name) values ('France');
insert into air_travels_db.country(country_name) values ('UK');
insert into air_travels_db.country(country_name) values ('China');
insert into air_travels_db.country(country_name) values ('Spain');
insert into air_travels_db.country(country_name) values ('Singapore');
insert into air_travels_db.country(country_name) values ('UAE');
insert into air_travels_db.country(country_name) values ('Japan');
insert into air_travels_db.country(country_name) values ('Netherlands');



insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('Boeing', 77, (select country_id from air_travels_db.country where country_name='US'));

insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('Lockheed Martin', 60, (select country_id from air_travels_db.country where country_name='US'));

insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('United Technologies', 47, (select country_id from air_travels_db.country where country_name='US'));

insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('Northrop Grumman', 34, (select country_id from air_travels_db.country where country_name='US'));

insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('GE Aviation', 31, (select country_id from air_travels_db.country where country_name='US'));

insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('Raytheon Company', 27, (select country_id from air_travels_db.country where country_name='US'));

insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('Airbus', 79, (select country_id from air_travels_db.country where country_name='EU'));

insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('Safran', 25, (select country_id from air_travels_db.country where country_name='France'));

insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('Rolls-Royce Holdings', 15, (select country_id from air_travels_db.country where country_name='UK'));





insert into air_travels_db.alliance(name, num_of_airlines, foundation_date)
values ('Star Alliance', 26, TO_DATE('14-05-1997', 'DD-MM-YYYY'));

insert into air_travels_db.alliance(name, num_of_airlines, foundation_date)
values ('Oneworld', 14, TO_DATE('01-02-1999', 'DD-MM-YYYY'));

insert into air_travels_db.alliance(name, num_of_airlines, foundation_date)
values ('Skyteam', 19, TO_DATE('22-06-2000', 'DD-MM-YYYY'));

insert into air_travels_db.alliance(name, num_of_airlines, foundation_date)
values ('Vanilla Alliance', 5, TO_DATE('21-09-2015', 'DD-MM-YYYY'));

insert into air_travels_db.alliance(name, num_of_airlines, foundation_date)
values ('U-FLY Alliance', 5, TO_DATE('18-01-2016', 'DD-MM-YYYY'));

insert into air_travels_db.alliance(name, num_of_airlines, foundation_date)
values ('Value Alliance', 5, TO_DATE('16-05-2016', 'DD-MM-YYYY'));




insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Star Alliance' ),
        'Air Canada', 48, 166);

insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Star Alliance' ),
        'Air China', 102, 451);

insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Star Alliance' ),
        'United Airlines', 57, 834);

insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Oneworld' ),
        'American Airlines', 200, 888);

insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Oneworld' ),
        'British Airways', 45, 254);

insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Oneworld' ),
        'Japan Airlines', 52, 156);



insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Skyteam' ),
        'Aeroflot', 13, 244);

insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Skyteam' ),
        'Air France', 51, 213);

insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Vanilla Alliance' ),
        'Air Austral', 1, 8);

insert into air_travels_db.airline(alliance_id, name, passengers_per_year, num_of_aircrafts)
values ((select alliance_id from air_travels_db.alliance where name='Vanilla Alliance' ),
        'Air Madagascar', 1, 11);







insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Airbus A330-200', 253, 1, (select manufacturer_id from air_travels_db.manufacturer where name='Airbus'),
        (select airline_id from air_travels_db.airline where name='Aeroflot'));

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Boeing 737', 253, 1, (select manufacturer_id from air_travels_db.manufacturer where name='Boeing'),
        (select airline_id from air_travels_db.airline where name='Air Canada'));

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Boeing 777', 270, 1, (select manufacturer_id from air_travels_db.manufacturer where name='Boeing'),
        (select airline_id from air_travels_db.airline where name='Air China'));

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Airbus A330-200', 210, 1, (select manufacturer_id from air_travels_db.manufacturer where name='Airbus'),
        (select airline_id from air_travels_db.airline where name='American Airlines'));

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Boeing 787', 280, 1, (select manufacturer_id from air_travels_db.manufacturer where name='Boeing'),
        (select airline_id from air_travels_db.airline where name='British Airways'));

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Airbus A350', 310, 1, (select manufacturer_id from air_travels_db.manufacturer where name='Airbus'),
        (select airline_id from air_travels_db.airline where name='Air France'));

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Airbus A380', 853, 2, (select manufacturer_id from air_travels_db.manufacturer where name='Airbus'),
        (select airline_id from air_travels_db.airline where name='Air Austral'));

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Airbus A330-200', 295, 1, (select manufacturer_id from air_travels_db.manufacturer where name='Airbus'),
        (select airline_id from air_travels_db.airline where name='Air Madagascar'));

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Boeing 737', 220, 1, (select manufacturer_id from air_travels_db.manufacturer where name='Boeing'),
        (select airline_id from air_travels_db.airline where name='Japan Airlines'));

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Airbus A330-200', 260, 1, (select manufacturer_id from air_travels_db.manufacturer where name='Airbus'),
        (select airline_id from air_travels_db.airline where name='United Airlines'));







insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('Hartsfield', '103900', (select country_id from air_travels_db.country where country_name='US'));

insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('Capital', '95780', (select country_id from air_travels_db.country where country_name='China'));

insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('International', '88240', (select country_id from air_travels_db.country where country_name='UAE'));

insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('Haneda International', '85260', (select country_id from air_travels_db.country where country_name='Japan'));

insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('Heathrow', '77990', (select country_id from air_travels_db.country where country_name='UK'));

insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('Schiphol', '68400', (select country_id from air_travels_db.country where country_name='Netherlands'));

insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('Changi', '62200', (select country_id from air_travels_db.country where country_name='Singapore'));

insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('Barajas', '53403', (select country_id from air_travels_db.country where country_name='Spain'));

insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('El Prat', '47280', (select country_id from air_travels_db.country where country_name='Spain'));

insert into air_travels_db.airport(name, passengers_per_year, country_id)
values ('Douglas', '45910', (select country_id from air_travels_db.country where country_name='US'));







insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (4, 6, 3);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (2, 10, 2);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (2, 9, 7);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (8, 1, 4);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (4, 3, 11);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (7, 1, 10);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (9, 2, 5);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (4, 6, 9);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (2, 7, 8);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (1, 8, 6);
insert into air_travels_db.flight(departure_airport, arrival_airport, aircraft_id) values (5, 4, 5);



insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Sara', 7, 4);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Peter', 10, 8);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Bob', 2, 3);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Henry', 8, 5);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Julia', 2, 4);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Anne', 1, 3);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Tom', 9, 2);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Harry', 6, 7);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Taylor', 4, 9);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Steve', 7, 3);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Michael', 5, 5);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Bill', 10, 9);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Kate', 3, 2);
insert into air_travels_db.tweet(author_name, satisfaction, flight_id) values ('Elizabeth', 6, 8);




insert into air_travels_db.prices(flight_id, class, price) values (1, 'economy', 230);
insert into air_travels_db.prices(flight_id, class, price) values (2, 'economy', 300);
insert into air_travels_db.prices(flight_id, class, price) values (3, 'economy', 410);
insert into air_travels_db.prices(flight_id, class, price) values (4, 'economy', 340);
insert into air_travels_db.prices(flight_id, class, price) values (5, 'economy', 500);
insert into air_travels_db.prices(flight_id, class, price) values (6, 'economy', 180);
insert into air_travels_db.prices(flight_id, class, price) values (7, 'economy', 300);
insert into air_travels_db.prices(flight_id, class, price) values (8, 'economy', 390);
insert into air_travels_db.prices(flight_id, class, price) values (9, 'economy', 190);
insert into air_travels_db.prices(flight_id, class, price) values (10, 'economy', 210);
insert into air_travels_db.prices(flight_id, class, price) values (1, 'economy', 400);
insert into air_travels_db.prices(flight_id, class, price) values (2, 'comfort', 390);
insert into air_travels_db.prices(flight_id, class, price) values (3, 'comfort', 520);
insert into air_travels_db.prices(flight_id, class, price) values (4, 'comfort', 410);
insert into air_travels_db.prices(flight_id, class, price) values (5, 'comfort', 550);
insert into air_travels_db.prices(flight_id, class, price) values (6, 'comfort', 240);
insert into air_travels_db.prices(flight_id, class, price) values (7, 'comfort', 340);
insert into air_travels_db.prices(flight_id, class, price) values (8, 'comfort', 420);
insert into air_travels_db.prices(flight_id, class, price) values (9, 'comfort', 220);
insert into air_travels_db.prices(flight_id, class, price) values (10, 'comfort', 300);
insert into air_travels_db.prices(flight_id, class, price) values (1, 'business', 510);
insert into air_travels_db.prices(flight_id, class, price) values (2, 'business', 450);
insert into air_travels_db.prices(flight_id, class, price) values (3, 'business', 600);
insert into air_travels_db.prices(flight_id, class, price) values (4, 'business', 450);
insert into air_travels_db.prices(flight_id, class, price) values (5, 'business', 610);
insert into air_travels_db.prices(flight_id, class, price) values (6, 'business', 350);
insert into air_travels_db.prices(flight_id, class, price) values (7, 'business', 420);
insert into air_travels_db.prices(flight_id, class, price) values (8, 'business', 510);
insert into air_travels_db.prices(flight_id, class, price) values (9, 'business', 320);
insert into air_travels_db.prices(flight_id, class, price) values (10, 'business', 500);
insert into air_travels_db.prices(flight_id, class, price) values (1, 'business', 400);
                             
                             
                             
                             
                             
                             
/*/////////////////////////////////////////////////////////////////////////////////// */

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Airbus', 200, 1, 20, 3);

insert into air_travels_db.aircraft(model, num_of_seats, num_of_floors, manufacturer_id, airline)
values ('Airbus', 200, 1, 3, -1);

update air_travels_db.prices set class='high' where class='business';

insert into air_travels_db.manufacturer(name, annual_revenue, country_id)
values ('name', 3, 15);

update air_travels_db.flight set departure_airport=0 where arrival_airport=1;

insert into air_travels_db.airline(passengers_per_year, num_of_aircrafts, alliance_id, name)
values (1, 20, 30, 'air');

delete from air_travels_db.country where country_name='Japan';

/*//////////////////////////////////////////////////////////////////////////////////////

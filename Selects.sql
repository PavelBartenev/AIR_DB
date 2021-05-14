/* Количество самолетов производимых компанией */
select manufacturer.name, count(aircraft.aircraft_id) as count
from air_travels_db.manufacturer inner join air_travels_db.aircraft on manufacturer.manufacturer_id = aircraft.manufacturer_id
group by manufacturer.manufacturer_id
order by count(aircraft.aircraft_id) desc;



/* Средние цены в аэропорту */
select airport.name, country.country_name, round(avg(price), 2) as mean_price, passengers_per_year
from air_travels_db.airport
    inner join air_travels_db.flight on airport.airport_id = flight.departure_airport
    inner join air_travels_db.prices on flight.flight_id = prices.flight_id
    inner join air_travels_db.country on airport.country_id = country.country_id
group by airport_id, country_name
having round(avg(price), 2) < 400;


/* Перелеты из Испании в Сингапур */
select class, price, from_airport.name, to_airport.name, from_country.country_name, to_country.country_name
from air_travels_db.flight
         inner join air_travels_db.prices on flight.flight_id = prices.flight_id
         inner join air_travels_db.airport as to_airport on flight.arrival_airport = to_airport.airport_id
         inner join air_travels_db.airport as from_airport on flight.flight_id = from_airport.airport_id
         inner join air_travels_db.country as to_country on to_airport.country_id = to_country.country_id
         inner join air_travels_db.country as from_country on from_airport.country_id = from_country.country_id
where from_country.country_name = 'Spain' and to_country.country_name = 'Singapore'
order by price;



/* Цены перелетов эконом класса */
select flight_id, class, price, price - lead(price) over (order by price desc ) as diff
from air_travels_db.prices
where class = 'economy'
order by prices.price desc;



/* Какой процент самолетов у линии текущего альянса */
select alliance.name, airline.name, num_of_aircrafts,
       sum(num_of_aircrafts) over (partition by alliance.alliance_id range current row ) as sum_aircrafts,
       round(cast(num_of_aircrafts as float) / sum(num_of_aircrafts) over (partition by alliance.alliance_id) * 100) as percent
from air_travels_db.airline inner join air_travels_db.alliance on airline.alliance_id = alliance.alliance_id;

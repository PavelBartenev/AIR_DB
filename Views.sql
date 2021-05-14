/* Названия стран и их аэропортов*/
create or replace view AirportsCountries as
select country_name, name as airport from air_travels_db.airport
inner join air_travels_db.country on air_travels_db.airport.country_id=air_travels_db.country.country_id;


/*Названия альянсов и входящих в них авиалиний*/
create or replace view AirlineAlliances as
select alliance.name as alliance, airline.name as airline from air_travels_db.airline
inner join air_travels_db.alliance on air_travels_db.airline.alliance_id=air_travels_db.alliance.alliance_id;


/*Модели самолетов и их полеты*/
create or replace view AircraftFlights as
select flight_id, model from
air_travels_db.aircraft inner join air_travels_db.flight on aircraft.aircraft_id = flight.aircraft_id;


create or replace function text_hiding(text text, first int, last int) returns text as $$
declare
    new_text text := '';

    len int := length(text);
begin
    new_text = left(text, first);
    for i in first .. last - 1
        loop
        new_text = concat(new_text, '*');
        end loop;
    new_text = concat(new_text, right(text, len - last));
    return new_text;
end;
$$ language plpgsql;


/*Hide tweets authors names*/
create or replace view AnonymousTweets as
select tweet_id, text_hiding(author_name, 1, length(author_name)),
       satisfaction, flight_id from air_travels_db.tweet;

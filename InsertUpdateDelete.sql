insert into air_travels_db.country(country_name) values ('US');
insert into air_travels_db.country(country_name) values ('EU');






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


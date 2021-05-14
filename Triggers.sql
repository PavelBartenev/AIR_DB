create or replace function remove_duplicates()
returns trigger as $$
    begin
        delete from air_travels_db.airport WHERE name = new.name;
    end;
$$ language plpgsql;


create trigger remove_copies before insert on air_travels_db.airport
    for each row execute procedure remove_duplicates();

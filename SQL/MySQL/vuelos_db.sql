create database vuelos;
use vuelos;

create table airline(
	airline_code varchar(2) primary key,
    airline_name varchar(50)
);

create table airport(
	iata_code varchar(3) primary key,
    airport_name varchar(50),
    city varchar(50)
);
    
create table flight(
	airline_code varchar(2),
	flight_number varchar(4) primary key,
    iata_code varchar(3),
    cancellation_reason char,
    foreign key(airline_code) references airline(airline_code),
    foreign key(iata_code) references airport(iata_code)
);

load data infile '.../airline.csv'
into table airline
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
;

load data infile '.../airport.csv'
into table airline
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
;

load data infile '.../flight.csv'
into table airline
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
;

SELECT * FROM airline;
SELECT * FROM airport;
SELECT * FROM flight;

select cancellation_reason, COUNT(*) as main_reason_cancellation
from flight
group by cancellation_reason
order by main_reason_cancellation desc
limit 1;
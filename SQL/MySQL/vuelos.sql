create database vuelos;
use vuelos;

create table airline(
	airline_code varchar(2) primary key,
    airline_name varchar(50)
);

create table airport(
	iata_code varchar(3) primary key,
    airport_name varchar(80),
    city varchar(50)
);

create table cancellation_reason(
	id_cancellation char primary key,
    cancellation_reason varchar(50)
);

create table flight(
	airline_code varchar(2),
	flight_number varchar(4),
    iata_code varchar(3),
    cancellation_reason char,
	id_flight varchar(10) primary key,
    foreign key(airline_code) references airline(airline_code),
    foreign key(iata_code) references airport(iata_code),
    foreign key(cancellation_reason) references cancellation_reason(id_cancellation)
);

show variables like "secure_file_priv";

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/airline.csv'
into table airline
fields terminated by ';'
lines terminated by '\n'
ignore 1 rows
;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/airport.csv'
into table airport
fields terminated by ';'
lines terminated by '\n'
ignore 1 rows
;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cancellation_reason.csv'
into table cancellation_reason
fields terminated by ';'
lines terminated by '\n'
ignore 1 rows
;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/flight.csv'
into table flight
fields terminated by ';'
lines terminated by '\n'
ignore 1 rows 
;

select * from airline;
select * from airport;
select * from cancellation_reason;
select * from flight;

select cancellation_reason, COUNT(*) as number_appearances
-- selecciona la columna y renombra el contador
from flight
-- selecciona la tabla vuelos
group by cancellation_reason
-- agrupa por motivo de cancelacion por lo que contará los motivos repetidos
order by number_appearances desc
-- ordena los resultados de forma descendiente
limit 1
/* limita el resultado a uno de la consulta
así solo aparecerá el motivo mas frecuente de cancelacion de vuelos 
y la cantidad de veces que aparece */
;
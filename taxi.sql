sudo -i -u postgres
psql
CREATE DATABASE taxi;
\q
psql taxi


CREATE TABLE Car (
brand varchar(255),                         
model varchar(255),
fuel varchar(255),
engine_displacement float,
type_of_gearbox varchar(255),
year_of_issue integer,
color varchar
);

CREATE TABLE Driver (
name varchar(255),
surname varchar(255),
date_of_birth date,
drivig_experiencr integer,
gander varchar(255),
cars integer REFERENCES Car (id)
);

CREATE TABLE Call_center (
name varchar(255),
surname varchar(255),
date_of_birth date,
gander varchar(255)
);

INSERT INTO Car  VALUES (1, 'BMW', 'x5', 'бензин', 5.0, 'механика', 2015, 'серый');
INSERT INTO Car  VALUES (2, 'Mercedes', 's350', 'дизель', 5.5, 'автомат', 2010, 'белый');
INSERT INTO Car  VALUES (3, 'Toyota', 'Camry', 'электричество', 3.5, 'автомат', 2005, 'черный');
INSERT INTO Car  VALUES (4, 'Mercedes', 's500', 'бензин', 5.5, 'автомат', 2020, 'черный');
INSERT INTO Car  VALUES (5, 'BMW', 'x5', 'дизель', 4.0, 'механика', 2011, 'красный');
INSERT INTO Car  VALUES (6, 'Mercedes', 's350', 'электричество', 2.0, 'автомат', 2013, 'серый');
INSERT INTO Car  VALUES (7, 'Toyota', 'Camry', 'бензин', 5.5, 'автомат', 2010, 'белый');
INSERT INTO Car  VALUES (8, 'BMW', 'x5', 'дизель', 5.5, 'автомат', 2003, 'черный');
INSERT INTO Car  VALUES (9, 'Mercedes', 's350', 'электричество', 4.5, 'автомат', 2009, 'синий');
INSERT INTO Car  VALUES (10, 'Toyota', 'Camry', 'бензин', 2.5, 'автомат', 2005, 'красный');

INSERT INTO Driver  VALUES ('Максат', 'Максатов', '1950-03-12', 40, 'М', 1);
INSERT INTO Driver  VALUES ('Бекжан', 'Бекжанов', '1970-01-15', 30, 'М', 2);
INSERT INTO Driver  VALUES ('Мурат', 'Муратов', '1960-02-17', 10, 'М', 3);
INSERT INTO Driver  VALUES ('Тимур', 'Тимуров', '19750-05-20', 5, 'М', 4);
INSERT INTO Driver  VALUES ('Жанара', 'Жанараова', '1986-08-30', 11, 'Ж', 5);
INSERT INTO Driver  VALUES ('Перизат', 'Перизатова', '1990-09-07', 15, 'Ж', 6);
INSERT INTO Driver  VALUES ('Азамат', 'Азаматов', '1952-11-19', 2, 'М', 7);
INSERT INTO Driver  VALUES ('Нурлан', 'Нурланоа', '1974-05-23', 6, 'М', 8);
INSERT INTO Driver  VALUES ('Санжар', 'Санжароа', '1985-02-26', 3, 'М', 9);
INSERT INTO Driver  VALUES ('Элдияр', 'Элдияров', '1979-06-03', 11, 'М', 10);

INSERT INTO Call_center  VALUES ('Асан', 'Асанов', '2000-04-15', 'М');
INSERT INTO Call_center  VALUES ('Бекжан', 'Бекжанов', '1999-12-20', 'М');
INSERT INTO Call_center  VALUES ('Марат', 'Маратов', '2001-01-01', 'М');
INSERT INTO Call_center  VALUES ('Дастан', 'Дастанов', '1996-03-23', 'М');
INSERT INTO Call_center  VALUES ('Айдай', 'Айдайова', '1993-09-06', 'Ж');
INSERT INTO Call_center  VALUES ('Асель', 'Аселова', '2000-08-05', 'Ж');
INSERT INTO Call_center  VALUES ('Исхак', 'Исхаков', '2002-10-15', 'М');
INSERT INTO Call_center  VALUES ('Саламат', 'Саламатов', '1997-02-28', 'М');
INSERT INTO Call_center  VALUES ('Талай', 'Талайов', '2000-01-31', 'М');
INSERT INTO Call_center  VALUES ('Талайбек', 'Талайбеков', '2001-02-03', 'М');
INSERT INTO Call_center  VALUES ('Усон', 'Усонов', '2001-03-04', 'М');
INSERT INTO Call_center  VALUES ('Бектур', 'Бектуров', '2002-07-08', 'М');

SELECT * FROM Car WHERE brand = 'Toyota' and model = 'Camry' ORDER BY year_of_issue DESC;
SELECT name FROM Call_center ORDER BY name DESC LIMIT(10);
UPDATE Car SET brand = 'Mersus' WHERE brand = 'Mercedes';
FROM Driver WHERE name = 'Азамат' and surname = 'Азаматов';
SELECT * FROM Driver WHERE gander = 'М' and drivig_experiencr > 10;
SELECT AVG(drivig_experiencr) FROM Driver WHERE date_of_birth > '1975-10-10';
SELECT name, surname, brand, model FROM Driver INNER JOIN Car ON Car.id = Driver.cars;
SELECT brand, COUNT(*) AS amount_cars FROM Car GROUP BY brand ORDER BY amount_cars DESC;
SELECT name, surname, COUNT(*) AS driven_cars FROM Driver GROUP BY name, surname, cars ORDER BY driven_cars DESC;
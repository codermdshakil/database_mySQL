CREATE DATABASE TEST;
USE TEST;

create table person(
    id int primary key,
	name varchar(100) not null,
    email varchar(50) unique
);

insert into person(id, name, email) values (1, "Shakil", "ahmed@gmail.com");
insert into person(id, name, email) values (2, "Nadim", "nadim@gmail.com");

alter table person change column email email varchar(100);
alter table person change column name student_name varchar(50);
alter table person add column address varchar(150);

insert into person(id, student_name, email, address) values (3, "Mafu", "mafu@gmail.com", "Delgraw");

-- delete a column
alter table person drop column student_name;


select * from person;


use sakila;
select * from actor;
select first_name, last_name from actor;

select * from city;
select * from customer;

select * from customer
where first_name in('LINDA') or last_name in('BROWN');

select * from customer
where first_name = 'LINDA' or last_name = 'BROWN';

select * from staff;
select * from inventory;
                           

select * from actor 
where first_name like "_A%";

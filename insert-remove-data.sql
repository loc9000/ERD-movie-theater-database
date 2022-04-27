insert into customers (first_name, last_name)
values
('Loc', 'Tran'),
('John', 'Doe'), 
('Jane', 'Doe')

update customers 
set last_name = 'Gray'
where customer_id = 2

insert into movies (movie_title, run_time, movie_rating)
values
('Moana', 103, 'PG')

insert into concessions (price, date_purchased, quantity, customer_id)
values
(4, '2038-01-19 03:14:07', 4, (1))

insert into tickets (user_id, price, date_purchased, quantity, theater_id, movie_id)
values
((1), 10.99, '2038-01-19 03:14:07', 1, (2), (1))

insert into theaters (theater_number, theater_capacity, movie_id)
values
(1, 200, (1))


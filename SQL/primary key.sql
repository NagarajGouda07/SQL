create database task;
use task;
CREATE TABLE orders (
    id INT PRIMARY KEY,
    order_name VARCHAR(255),
    cost DECIMAL(10, 2),
    created_at TIMESTAMP,
    created_by VARCHAR(255),
    modified_at TIMESTAMP,
    modified_by VARCHAR(255)
);
INSERT INTO orders (id, order_name, cost, created_at, created_by, modified_at, modified_by) VALUES
(1, 'Order1', 25.50, '2023-07-01 10:00:00', 'User1', '2023-07-01 12:00:00', 'User1'),
(2, 'Order2', 30.75, '2023-07-02 11:00:00', 'User2', '2023-07-02 13:00:00', 'User2'),
(3, 'Order3', 15.00, '2023-07-03 09:00:00', 'User3', '2023-07-03 11:00:00', 'User3'),
(4, 'Order4', 50.00, '2023-07-04 14:00:00', 'User4', '2023-07-04 16:00:00', 'User4'),
(5, 'Order5', 45.25, '2023-07-05 15:00:00', 'User5', '2023-07-05 17:00:00', 'User5');

CREATE TABLE payments (
    id INT PRIMARY KEY,
    price DECIMAL(10, 2),
    order_id INT,
    payment_status VARCHAR(50),
    created_at TIMESTAMP,
    created_by VARCHAR(255),
    modified_at TIMESTAMP,
    modified_by VARCHAR(255),
    FOREIGN KEY (order_id) REFERENCES orders(id)
);
INSERT INTO payments (id, price, order_id, payment_status, created_at, created_by, modified_at, modified_by) VALUES
(1, 25.50, 1, 'Completed', '2023-07-01 10:30:00', 'User1', '2023-07-01 12:30:00', 'User1'),
(2, 30.75, 2, 'Pending', '2023-07-02 11:30:00', 'User2', '2023-07-02 13:30:00', 'User2'),
(3, 15.00, 3, 'Completed', '2023-07-03 09:30:00', 'User3', '2023-07-03 11:30:00', 'User3'),
(4, 50.00, 4, 'Completed', '2023-07-04 14:30:00', 'User4', '2023-07-04 16:30:00', 'User4'),
(5, 45.25, 5, 'Pending', '2023-07-05 15:30:00', 'User5', '2023-07-05 17:30:00', 'User5');

CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    restaurant_name VARCHAR(255),
    loc VARCHAR(255),
    order_id INT,
    ratings INT,
    payment_id INT,
    created_at TIMESTAMP,
    created_by VARCHAR(255),
    modified_at TIMESTAMP,
    modified_by VARCHAR(255),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (payment_id) REFERENCES payments(id)
);
INSERT INTO restaurants (id, restaurant_name, loc, order_id, ratings, payment_id, created_at, created_by, modified_at, modified_by) VALUES
(1, 'Restaurant1', 'Location1', 1, 4, 1, '2023-07-01 09:00:00', 'User1', '2023-07-01 12:00:00', 'User1'),
(2, 'Restaurant2', 'Location2', 2, 5, 2, '2023-07-02 10:00:00', 'User2', '2023-07-02 13:00:00', 'User2'),
(3, 'Restaurant3', 'Location3', 3, 3, 3, '2023-07-03 08:00:00', 'User3', '2023-07-03 11:00:00', 'User3'),
(4, 'Restaurant4', 'Location4', 4, 5, 4, '2023-07-04 13:00:00', 'User4', '2023-07-04 16:00:00', 'User4'),
(5, 'Restaurant5', 'Location5', 5, 4, 5, '2023-07-05 14:00:00', 'User5', '2023-07-05 17:00:00', 'User5');

CREATE TABLE delivery (
    id INT PRIMARY KEY,
    person_name VARCHAR(255),
    mode_of_payment ENUM('Cash', 'Card', 'Online'),
    restaurant_id INT,
    order_id INT,
    created_at TIMESTAMP,
    created_by VARCHAR(255),
    modified_at TIMESTAMP,
    modified_by VARCHAR(255),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id),
    FOREIGN KEY (order_id) REFERENCES orders(id)
);
INSERT INTO delivery (id, person_name, mode_of_payment, restaurant_id, order_id, created_at, created_by, modified_at, modified_by) VALUES
(1, 'DeliveryPerson1', 'Cash', 1, 1, '2023-07-01 11:00:00', 'User1', '2023-07-01 12:00:00', 'User1'),
(2, 'DeliveryPerson2', 'Card', 2, 2, '2023-07-02 12:00:00', 'User2', '2023-07-02 13:00:00', 'User2'),
(3, 'DeliveryPerson3', 'Online', 3, 3, '2023-07-03 10:00:00', 'User3', '2023-07-03 11:00:00', 'User3'),
(4, 'DeliveryPerson4', 'Cash', 4, 4, '2023-07-04 15:00:00', 'User4', '2023-07-04 16:00:00', 'User4'),
(5, 'DeliveryPerson5', 'Card', 5, 5, '2023-07-05 16:00:00', 'User5', '2023-07-05 17:00:00', 'User5');



select * from payments;

select * from restaurants;

select * from delivery;



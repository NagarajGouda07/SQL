CREATE DATABASE DATABASE1;
USE DATABASE1;

CREATE TABLE show_room (
    id INT PRIMARY KEY, name VARCHAR(50) NOT NULL, location VARCHAR(100), capacity INT CHECK (capacity >= 0),
    available_from DATE, available_to DATE, contact_number VARCHAR(15) UNIQUE, manager_id INT,
    rating FLOAT CHECK (rating >= 0 AND rating <= 5), created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE chat_center (
    id INT PRIMARY KEY, user_name VARCHAR(50) NOT NULL, chat_room VARCHAR(50), message TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, status VARCHAR(20), moderator_id INT, chat_id VARCHAR(50) UNIQUE, is_active BOOLEAN,
    message_count INT CHECK (message_count >= 0)
);

CREATE TABLE temple_info (
    id INT PRIMARY KEY, name VARCHAR(100) NOT NULL, location VARCHAR(100), deity VARCHAR(50),
    opening_time TIME, closing_time TIME, contact_number VARCHAR(15) UNIQUE, established_year INT,
    is_active BOOLEAN, visitor_count INT CHECK (visitor_count >= 0)
);

CREATE TABLE market_info (
    id INT PRIMARY KEY, name VARCHAR(50) NOT NULL, location VARCHAR(100), market_type VARCHAR(50),
    opening_time TIME, closing_time TIME, contact_number VARCHAR(15) UNIQUE, owner_id INT,
    rating FLOAT CHECK (rating >= 0 AND rating <= 5), shop_count INT CHECK (shop_count >= 0)
);

CREATE TABLE metro_info (
    id INT PRIMARY KEY, station_name VARCHAR(100) NOT NULL, location VARCHAR(100), line VARCHAR(50),
    opening_time TIME, closing_time TIME, contact_number VARCHAR(15) UNIQUE, manager_id INT,
    passenger_count INT CHECK (passenger_count >= 0), is_active BOOLEAN
);


INSERT INTO show_room (id, name, location, capacity, available_from, available_to, contact_number, manager_id, rating, created_at)
VALUES
(1, 'Grand Hall', 'Downtown', 200, '2024-08-01', '2024-12-31', '123-456-7890', 1, 4.5, CURRENT_TIMESTAMP),
(2, 'Conference Room A', 'Midtown', 50, '2024-09-01', '2024-11-30', '123-456-7891', 2, 4.0, CURRENT_TIMESTAMP),
(3, 'Exhibition Room', 'Uptown', 300, '2024-07-01', '2024-10-31', '123-456-7892', 3, 4.2, CURRENT_TIMESTAMP),
(4, 'Main Hall', 'Eastside', 150, '2024-08-15', '2024-12-15', '123-456-7893', 4, 4.8, CURRENT_TIMESTAMP),
(5, 'Small Room', 'Westside', 30, '2024-09-10', '2024-12-05', '123-456-7894', 5, 3.5, CURRENT_TIMESTAMP),
(6, 'Medium Room', 'Northside', 70, '2024-07-20', '2024-11-20', '123-456-7895', 6, 4.1, CURRENT_TIMESTAMP),
(7, 'Open Space', 'Southside', 500, '2024-08-05', '2024-12-01', '123-456-7896', 7, 4.7, CURRENT_TIMESTAMP),
(8, 'Event Hall', 'City Center', 250, '2024-08-25', '2024-12-20', '123-456-7897', 8, 4.9, CURRENT_TIMESTAMP),
(9, 'Banquet Hall', 'Old Town', 120, '2024-07-30', '2024-11-25', '123-456-7898', 9, 4.3, CURRENT_TIMESTAMP),
(10, 'VIP Room', 'New District', 40, '2024-09-05', '2024-12-10', '123-456-7899', 10, 4.6, CURRENT_TIMESTAMP),
(11, 'Hall A', 'Downtown', 180, '2024-08-10', '2024-12-25', '123-456-7800', 11, 4.4, CURRENT_TIMESTAMP),
(12, 'Hall B', 'Midtown', 100, '2024-09-15', '2024-12-15', '123-456-7801', 12, 4.2, CURRENT_TIMESTAMP),
(13, 'Conference Room B', 'Uptown', 60, '2024-07-05', '2024-11-30', '123-456-7802', 13, 4.0, CURRENT_TIMESTAMP),
(14, 'Meeting Room', 'Eastside', 35, '2024-08-20', '2024-12-20', '123-456-7803', 14, 3.8, CURRENT_TIMESTAMP),
(15, 'Gallery Space', 'Westside', 220, '2024-09-20', '2024-12-10', '123-456-7804', 15, 4.7, CURRENT_TIMESTAMP),
(16, 'Atrium', 'Northside', 400, '2024-07-10', '2024-12-01', '123-456-7805', 16, 4.9, CURRENT_TIMESTAMP),
(17, 'Open Hall', 'Southside', 280, '2024-08-30', '2024-12-15', '123-456-7806', 17, 4.8, CURRENT_TIMESTAMP),
(18, 'Training Room', 'City Center', 90, '2024-07-25', '2024-12-05', '123-456-7807', 18, 4.3, CURRENT_TIMESTAMP),
(19, 'Studio', 'Old Town', 110, '2024-09-25', '2024-12-25', '123-456-7808', 19, 4.6, CURRENT_TIMESTAMP),
(20, 'Lecture Hall', 'New District', 130, '2024-08-05', '2024-12-10', '123-456-7809', 20, 4.5, CURRENT_TIMESTAMP);

INSERT INTO chat_center (id, user_name, chat_room, message, timestamp, status, moderator_id, chat_id, is_active, message_count)
VALUES
(1, 'user1', 'room1', 'Hello, World!', CURRENT_TIMESTAMP, 'active', 1, 'chat_001', TRUE, 10),
(2, 'user2', 'room2', 'Hi there!', CURRENT_TIMESTAMP, 'inactive', 2, 'chat_002', FALSE, 5),
(3, 'user3', 'room1', 'Good morning!', CURRENT_TIMESTAMP, 'active', 1, 'chat_003', TRUE, 12),
(4, 'user4', 'room3', 'How are you?', CURRENT_TIMESTAMP, 'active', 3, 'chat_004', TRUE, 8),
(5, 'user5', 'room2', 'Nice to meet you!', CURRENT_TIMESTAMP, 'inactive', 2, 'chat_005', FALSE, 15),
(6, 'user6', 'room3', 'Have a great day!', CURRENT_TIMESTAMP, 'active', 3, 'chat_006', TRUE, 20),
(7, 'user7', 'room4', 'Good evening!', CURRENT_TIMESTAMP, 'inactive', 4, 'chat_007', FALSE, 7),
(8, 'user8', 'room4', 'What\'s up?', CURRENT_TIMESTAMP, 'active', 4, 'chat_008', TRUE, 18),
(9, 'user9', 'room5', 'Good night!', CURRENT_TIMESTAMP, 'active', 5, 'chat_009', TRUE, 6),
(10, 'user10', 'room1', 'See you later!', CURRENT_TIMESTAMP, 'inactive', 1, 'chat_010', FALSE, 11),
(11, 'user11', 'room5', 'Take care!', CURRENT_TIMESTAMP, 'active', 5, 'chat_011', TRUE, 13),
(12, 'user12', 'room2', 'Goodbye!', CURRENT_TIMESTAMP, 'inactive', 2, 'chat_012', FALSE, 9),
(13, 'user13', 'room3', 'See you soon!', CURRENT_TIMESTAMP, 'active', 3, 'chat_013', TRUE, 14),
(14, 'user14', 'room4', 'Welcome!', CURRENT_TIMESTAMP, 'active', 4, 'chat_014', TRUE, 19),
(15, 'user15', 'room1', 'Nice to see you!', CURRENT_TIMESTAMP, 'inactive', 1, 'chat_015', FALSE, 16),
(16, 'user16', 'room2', 'Good luck!', CURRENT_TIMESTAMP, 'active', 2, 'chat_016', TRUE, 21),
(17, 'user17', 'room3', 'Have fun!', CURRENT_TIMESTAMP, 'inactive', 3, 'chat_017', FALSE, 17),
(18, 'user18', 'room4', 'Congratulations!', CURRENT_TIMESTAMP, 'active', 4, 'chat_018', TRUE, 22),
(19, 'user19', 'room5', 'All the best!', CURRENT_TIMESTAMP, 'active', 5, 'chat_019', TRUE, 20),
(20, 'user20', 'room1', 'Well done!', CURRENT_TIMESTAMP, 'inactive', 1, 'chat_020', FALSE, 23);

INSERT INTO temple_info (id, name, location, deity, opening_time, closing_time, contact_number, established_year, is_active, visitor_count)
VALUES
(1, 'Sun Temple', 'City Center', 'Sun God', '06:00:00', '18:00:00', '123-456-7892', 1920, TRUE, 1000),
(2, 'Moon Temple', 'Old Town', 'Moon Goddess', '05:00:00', '19:00:00', '123-456-7893', 1890, TRUE, 750),
(3, 'Star Temple', 'East District', 'Star Deity', '07:00:00', '17:00:00', '123-456-7894', 1950, TRUE, 800),
(4, 'Rain Temple', 'West District', 'Rain God', '06:30:00', '18:30:00', '123-456-7895', 1850, TRUE, 950),
(5, 'Wind Temple', 'South District', 'Wind Goddess', '05:30:00', '19:30:00', '123-456-7896', 1930, TRUE, 700),
(6, 'Earth Temple', 'North District', 'Earth Deity', '06:00:00', '18:00:00', '123-456-7897', 1800, TRUE, 1200),
(7, 'Fire Temple', 'City Center', 'Fire God', '07:00:00', '17:00:00', '123-456-7898', 1700, TRUE, 1100),
(8, 'Water Temple', 'Old Town', 'Water Goddess', '05:00:00', '19:00:00', '123-456-7899', 1600, TRUE, 850),
(9, 'Mountain Temple', 'East District', 'Mountain Deity', '06:00:00', '18:00:00', '123-456-7800', 1500, TRUE, 950),
(10, 'Forest Temple', 'West District', 'Forest God', '06:30:00', '18:30:00', '123-456-7801', 1400, TRUE, 900),
(11, 'River Temple', 'South District', 'River Goddess', '05:30:00', '19:30:00', '123-456-7802', 1300, TRUE, 650),
(12, 'Sky Temple', 'North District', 'Sky Deity', '07:00:00', '17:00:00', '123-456-7803', 1200, TRUE, 750),
(13, 'Thunder Temple', 'City Center', 'Thunder God', '06:00:00', '18:00:00', '123-456-7804', 1100, TRUE, 950),
(14, 'Lightning Temple', 'Old Town', 'Lightning Goddess', '05:00:00', '19:00:00', '123-456-7805', 1000, TRUE, 600),
(15, 'Ocean Temple', 'East District', 'Ocean Deity', '06:30:00', '18:30:00', '123-456-7806', 900, TRUE, 850),
(16, 'Desert Temple', 'West District', 'Desert God', '07:00:00', '17:00:00', '123-456-7807', 800, TRUE, 700),
(17, 'Jungle Temple', 'South District', 'Jungle Goddess', '06:00:00', '18:00:00', '123-456-7808', 700, TRUE, 1000),
(18, 'Meadow Temple', 'North District', 'Meadow Deity', '05:30:00', '19:30:00', '123-456-7809', 600, TRUE, 650),
(19, 'Hill Temple', 'City Center', 'Hill God', '06:00:00', '18:00:00', '123-456-7810', 500, TRUE, 750),
(20, 'Valley Temple', 'Old Town', 'Valley Goddess', '07:00:00', '17:00:00', '123-456-7811', 400, TRUE, 900);

INSERT INTO market_info (id, name, location, market_type, opening_time, closing_time, contact_number, owner_id, rating, shop_count)
VALUES
(1, 'City Market', 'Downtown', 'Grocery', '08:00:00', '20:00:00', '123-456-7894', 1, 4.7, 100),
(2, 'Night Market', 'Midtown', 'Clothing', '18:00:00', '02:00:00', '123-456-7895', 2, 4.2, 50),
(3, 'Farmer\'s Market', 'Suburbs', 'Produce', '07:00:00', '15:00:00', '123-456-7896', 3, 4.8, 75),
(4, 'Flea Market', 'Old Town', 'Antiques', '10:00:00', '18:00:00', '123-456-7897', 4, 4.3, 60),
(5, 'Artisan Market', 'City Center', 'Handicrafts', '09:00:00', '19:00:00', '123-456-7898', 5, 4.6, 80),
(6, 'Fish Market', 'Harbor', 'Seafood', '06:00:00', '14:00:00', '123-456-7899', 6, 4.5, 90),
(7, 'Flower Market', 'Botanical Garden', 'Flowers', '08:00:00', '17:00:00', '123-456-7800', 7, 4.7, 55),
(8, 'Book Market', 'University Area', 'Books', '09:00:00', '21:00:00', '123-456-7801', 8, 4.9, 70),
(9, 'Tech Market', 'Tech Park', 'Electronics', '10:00:00', '22:00:00', '123-456-7802', 9, 4.4, 65),
(10, 'Food Market', 'City Center', 'Street Food', '11:00:00', '23:00:00', '123-456-7803', 10, 4.8, 85),
(11, 'Craft Market', 'Downtown', 'Crafts', '09:00:00', '19:00:00', '123-456-7804', 11, 4.3, 40),
(12, 'Music Market', 'Entertainment District', 'Music', '12:00:00', '00:00:00', '123-456-7805', 12, 4.6, 50),
(13, 'Toy Market', 'Family Park', 'Toys', '10:00:00', '20:00:00', '123-456-7806', 13, 4.5, 30),
(14, 'Clothes Market', 'Fashion Street', 'Clothing', '09:00:00', '21:00:00', '123-456-7807', 14, 4.2, 100),
(15, 'Vintage Market', 'Historic District', 'Vintage Items', '10:00:00', '18:00:00', '123-456-7808', 15, 4.7, 45),
(16, 'Jewelry Market', 'Luxury Lane', 'Jewelry', '11:00:00', '20:00:00', '123-456-7809', 16, 4.8, 35),
(17, 'Pet Market', 'Pet Lane', 'Pet Supplies', '09:00:00', '19:00:00', '123-456-7810', 17, 4.4, 40),
(18, 'Organic Market', 'Green District', 'Organic Produce', '08:00:00', '16:00:00', '123-456-7811', 18, 4.9, 60),
(19, 'Wholesale Market', 'Industrial Area', 'Bulk Goods', '05:00:00', '15:00:00', '123-456-7812', 19, 4.3, 120),
(20, 'Craftsmen Market', 'Art District', 'Handmade Items', '10:00:00', '18:00:00', '123-456-7813', 20, 4.7, 50);

INSERT INTO metro_info (id, station_name, location, line, opening_time, closing_time, contact_number, manager_id, passenger_count, is_active)
VALUES
(1, 'Central Station', 'Downtown', 'Red Line', '05:00:00', '23:00:00', '123-456-7896', 1, 5000, TRUE),
(2, 'West End', 'Westside', 'Blue Line', '06:00:00', '22:00:00', '123-456-7897', 2, 3000, TRUE),
(3, 'East Point', 'Eastside', 'Green Line', '05:30:00', '23:30:00', '123-456-7898', 3, 4000, TRUE),
(4, 'North Park', 'Northside', 'Yellow Line', '06:00:00', '22:00:00', '123-456-7899', 4, 3500, TRUE),
(5, 'South Gate', 'Southside', 'Purple Line', '05:00:00', '23:00:00', '123-456-7800', 5, 4500, TRUE),
(6, 'City Square', 'City Center', 'Red Line', '05:30:00', '23:30:00', '123-456-7801', 6, 6000, TRUE),
(7, 'Tech Park', 'Tech District', 'Blue Line', '06:00:00', '22:00:00', '123-456-7802', 7, 3200, TRUE),
(8, 'University', 'College Area', 'Green Line', '05:00:00', '23:00:00', '123-456-7803', 8, 4100, TRUE),
(9, 'Old Town', 'Historic District', 'Yellow Line', '06:30:00', '22:30:00', '123-456-7804', 9, 3700, TRUE),
(10, 'Harbor View', 'Harbor', 'Purple Line', '05:30:00', '23:30:00', '123-456-7805', 10, 4200, TRUE),
(11, 'Meadow Park', 'Parkside', 'Red Line', '06:00:00', '22:00:00', '123-456-7806', 11, 3300, TRUE),
(12, 'Airport', 'Airport Area', 'Blue Line', '05:00:00', '23:00:00', '123-456-7807', 12, 7000, TRUE),
(13, 'Business District', 'Downtown', 'Green Line', '05:30:00', '23:30:00', '123-456-7808', 13, 5100, TRUE),
(14, 'Seaside', 'Coastal Area', 'Yellow Line', '06:00:00', '22:00:00', '123-456-7809', 14, 2900, TRUE),
(15, 'Mountain View', 'Hilltop', 'Purple Line', '05:00:00', '23:00:00', '123-456-7810', 15, 3100, TRUE),
(16, 'Lakefront', 'Lakeside', 'Red Line', '06:30:00', '22:30:00', '123-456-7811', 16, 3800, TRUE),
(17, 'Garden District', 'Botanical Area', 'Blue Line', '05:30:00', '23:30:00', '123-456-7812', 17, 3400, TRUE),
(18, 'Cultural Center', 'Museum Area', 'Green Line', '06:00:00', '22:00:00', '123-456-7813', 18, 4000, TRUE),
(19, 'Stadium', 'Sports Complex', 'Yellow Line', '05:00:00', '23:00:00', '123-456-7814', 19, 6000, TRUE),
(20, 'Library', 'Booktown', 'Purple Line', '06:30:00', '22:30:00', '123-456-7815', 20, 3700, TRUE);



ALTER TABLE show_room MODIFY location VARCHAR(100) NOT NULL;



ALTER TABLE chat_center ADD CONSTRAINT unique_user_name UNIQUE (user_name);


ALTER TABLE temple_info ADD CONSTRAINT check_established_year CHECK (established_year > 0);
ALTER TABLE market_info ADD CONSTRAINT check_shop_count_positive CHECK (shop_count >= 0);


SELECT * FROM database1.chat_center;

SELECT * FROM database1.market_info;

SELECT * FROM database1.metro_info;

SELECT * FROM database1.show_room;

SELECT * FROM database1.temple_info;
CREATE DATABASE naga;
USE naga;

CREATE TABLE movie_info (
    title VARCHAR(255), genre VARCHAR(255), director VARCHAR(255), release_year INT, duration INT);

ALTER TABLE movie_info
ADD COLUMN language VARCHAR(255),ADD COLUMN country VARCHAR(255),ADD COLUMN budget BIGINT,ADD COLUMN income BIGINT,ADD COLUMN rating BOOLEAN;

INSERT INTO movie_info (title, genre, director, release_year, duration, language, country, budget, income, rating)
VALUES
('KGF1', 'Action', 'Prashanth Neel', 2018, 156, 'Kannada', 'India', 80000000, 250000000, true),
('KGF2', 'Action', 'Prashanth Neel', 2022, 168, 'Kannada', 'India', 100000000, 1000000000, true),
('Rajakumara', 'Drama', 'Santhosh Ananddram', 2017, 148, 'Kannada', 'India', 20000000, 75000000, true),
('Kirik Party', 'Comedy', 'Rishab Shetty', 2016, 165, 'Kannada', 'India', 40000000, 80000000, true),
('Tagaru', 'Action', 'Duniya Soori', 2018, 129, 'Kannada', 'India', 25000000, 50000000, true),
('Ugramm', 'Action', 'Prashanth Neel', 2014, 132, 'Kannada', 'India', 15000000, 30000000, true),
('Mungaru Male', 'Romance', 'Yogaraj Bhat', 2006, 143, 'Kannada', 'India', 5000000, 50000000, true),
('Anjaniputra', 'Action', 'Harsha', 2017, 137, 'Kannada', 'India', 30000000, 60000000, true),
('Roberrt', 'Action', 'Tharun Sudhir', 2021, 166, 'Kannada', 'India', 60000000, 100000000, true),
('Kotigobba', 'Action', 'Shiva Karthik', 2021, 146, 'Kannada', 'India', 70000000, 150000000, true);

UPDATE movie_info SET duration = 160 WHERE title = 'KGF1';
UPDATE movie_info SET genre = 'Thriller' WHERE title = 'Kirik Party';
UPDATE movie_info SET release_year = 2020 WHERE title = 'Kotigobba 3';
UPDATE movie_info SET language = 'Hindi' WHERE title = 'Mungaru Male';
UPDATE movie_info SET budget = 120000000 WHERE title = 'KGF2';

DELETE FROM movie_info WHERE title = 'Anjaniputra';
DELETE FROM movie_info WHERE director = 'Prashanth Neel';

SELECT * FROM movie_info WHERE genre = 'Action';

SELECT * FROM movie_info WHERE release_year = 2021 OR duration > 150;

SELECT * FROM movie_info WHERE director NOT IN ('Prashanth Neel', 'Harsha');

SELECT * FROM movie_info
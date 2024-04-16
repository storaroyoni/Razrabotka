
CREATE DATABASE FilmRatingDatabase;

USE FilmRatingDatabase;

CREATE TABLE Movies (
    Id INT PRIMARY KEY IDENTITY,
    Title NVARCHAR(100) NOT NULL,
    Year INT,
    Genre NVARCHAR(50),
    Description NVARCHAR(MAX),
    Director NVARCHAR(100),
    Actors NVARCHAR(MAX),
    AverageRating DECIMAL(3, 2)
);

CREATE TABLE Reviews (
    Id INT PRIMARY KEY IDENTITY,
    MovieId INT FOREIGN KEY REFERENCES Movies(Id),
    Opinion NVARCHAR(MAX),
    Rating INT,
    DateAndTime DATETIME,
    Author NVARCHAR(100)
);

INSERT INTO Movies (Title, Year, Genre, Description, Director, Actors, AverageRating)
VALUES ('Inception', 2010, 'Sci-Fi', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page', NULL),
       ('The Shawshank Redemption', 1994, 'Drama', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton', NULL);

INSERT INTO Reviews (MovieId, Opinion, Rating, DateAndTime, Author)
VALUES (1, 'One of the best movies I have ever seen!', 10, '2024-03-31 10:00:00', 'User123'),
       (1, 'Great story and amazing visuals.', 9, '2024-03-30 15:30:00', 'MovieFan456'),
       (2, 'A classic! Everyone should watch it.', 10, '2024-03-31 08:45:00', 'Cinephile789');

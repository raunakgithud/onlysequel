--create database movies

use movies
/**
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    ReleaseDate DATE,
    Director VARCHAR(100),
    ReleaseYear INT,
    Language VARCHAR(30),
    Country VARCHAR(50),
    Budget DECIMAL(15, 2),
    BoxOfficeCollection DECIMAL(15, 2),
    Runtime INT,
    IMDBRating DECIMAL(3, 1),
    RottenTomatoesScore INT,
    ProductionCompany VARCHAR(100),
    MovieStatus VARCHAR(30),
    ContentRating VARCHAR(10),
    IsBlockbuster VARCHAR(10),
    ModifiedDate DATETIME DEFAULT GETDATE()
);
**/
/**
INSERT INTO Movies VALUES
(1001, 'Avatar', 'Thriller', '2023-02-11', 'Director A', 2001, 'German', 'USA', 292417794.00, 1973288843.00, 97, 8.6, 96, 'Studio A', 'Pre-Production', 'PG-13', 'Yes', GETDATE()),
(1002, 'Inception', 'Action', '2017-03-15', 'Director B', 2014, 'Spanish', 'USA', 80253577.00, 2425020913.00, 163, 8.4, 55, 'Studio B', 'Post-Production', 'PG-13', 'No', GETDATE()),
(1003, 'The Dark Knight', 'Drama', '2001-07-26', 'Director C', 2018, 'Spanish', 'USA', 188814137.00, 2265213337.00, 114, 8.8, 59, 'Studio C', 'Pre-Production', 'G', 'No', GETDATE()),
(1004, 'Interstellar', 'Romance', '2019-01-13', 'Director D', 1994, 'German', 'Germany', 235147201.00, 482239058.00, 163, 8.8, 63, 'Studio D', 'Post-Production', 'PG-13', 'Yes', GETDATE()),
(1005, 'Pulp Fiction', 'Action', '2000-07-11', 'Director E', 2005, 'German', 'China', 62999267.00, 1705711174.00, 157, 5.6, 84, 'Studio E', 'Post-Production', 'NC-17', 'Yes', GETDATE()),
(1006, 'Forrest Gump', 'Drama', '2010-05-22', 'Director F', 2008, 'English', 'USA', 155000000.00, 678226451.00, 142, 8.8, 71, 'Studio F', 'Released', 'PG-13', 'Yes', GETDATE()),
(1007, 'The Matrix', 'Sci-Fi', '2005-12-30', 'Director G', 2015, 'English', 'USA', 63000000.00, 467222728.00, 136, 8.7, 88, 'Studio G', 'Released', 'R', 'Yes', GETDATE()),
(1008, 'Gladiator', 'Action', '2020-08-14', 'Director H', 2012, 'English', 'UK', 103000000.00, 460583630.00, 155, 8.5, 67, 'Studio H', 'Released', 'R', 'Yes', GETDATE()),
(1009, 'Titanic', 'Romance', '1997-12-19', 'Director I', 2010, 'English', 'USA', 200000000.00, 2257845447.00, 194, 7.8, 89, 'Studio I', 'Released', 'PG-13', 'Yes', GETDATE()),
(1010, 'Jurassic Park', 'Adventure', '1993-06-11', 'Director J', 1995, 'English', 'USA', 63000000.00, 1029153114.00, 127, 8.2, 92, 'Studio J', 'Released', 'PG', 'Yes', GETDATE()),
(1011, 'The Avengers', 'Action', '2012-05-04', 'Director K', 2011, 'English', 'USA', 220000000.00, 1520595760.00, 143, 8.0, 92, 'Studio K', 'Released', 'PG-13', 'Yes', GETDATE()),
(1012, 'The Lion King', 'Adventure', '1994-07-29', 'Director L', 1996, 'English', 'USA', 45000000.00, 1149460635.00, 88, 8.5, 96, 'Studio L', 'Released', 'G', 'Yes', GETDATE()),
(1013, 'Frozen', 'Comedy', '2013-11-27', 'Director M', 2018, 'English', 'USA', 150000000.00, 1290000000.00, 102, 7.4, 95, 'Studio M', 'Released', 'PG', 'Yes', GETDATE()),
(1014, 'Toy Story', 'Comedy', '1995-11-22', 'Director N', 2000, 'English', 'USA', 30000000.00, 373554033.00, 81, 8.3, 100, 'Studio N', 'Released', 'G', 'Yes', GETDATE()),
(1015, 'Cinderella', 'Romance', '2015-03-13', 'Director O', 2007, 'English', 'USA', 95000000.00, 540878993.00, 113, 7.1, 84, 'Studio O', 'Released', 'PG', 'Yes', GETDATE()),
(1016, 'The Godfather', 'Drama', '1972-03-15', 'Director P', 1975, 'English', 'USA', 6000000.00, 245066411.00, 175, 9.2, 97, 'Studio P', 'Released', 'R', 'Yes', GETDATE()),
(1017, 'Schindlers List', 'Drama', '1993-12-15', 'Director Q', 1998, 'English', 'USA', 32000000.00, 321306993.00, 195, 8.9, 98, 'Studio Q', 'Released', 'R', 'Yes', GETDATE()),
(1018, 'Saving Private Ryan', 'Action', '1998-07-24', 'Director R', 2002, 'English', 'USA', 70000000.00, 482810871.00, 169, 8.6, 94, 'Studio R', 'Released', 'R', 'Yes', GETDATE()),
(1019, 'Jaws', 'Thriller', '1975-06-20', 'Director S', 1982, 'English', 'USA', 9000000.00, 470664713.00, 124, 8.0, 93, 'Studio S', 'Released', 'PG', 'Yes', GETDATE()),
(1020, 'E.T.', 'Sci-Fi', '1982-06-11', 'Director T', 1988, 'English', 'USA', 10500000.00, 792965326.00, 115, 7.9, 98, 'Studio T', 'Released', 'PG', 'Yes', GETDATE()),
(1021, 'Back to the Future', 'Comedy', '1985-07-03', 'Director U', 1992, 'English', 'USA', 19000000.00, 388328292.00, 116, 8.5, 96, 'Studio U', 'Released', 'PG', 'Yes', GETDATE()),
(1022, 'Terminator 2', 'Action', '1991-07-01', 'Director V', 1996, 'English', 'USA', 100000000.00, 520881760.00, 137, 8.6, 93, 'Studio V', 'Released', 'R', 'Yes', GETDATE()),
(1023, 'The Sixth Sense', 'Thriller', '1999-08-06', 'Director W', 2003, 'English', 'USA', 40000000.00, 672806993.00, 107, 8.1, 85, 'Studio W', 'Released', 'PG-13', 'Yes', GETDATE()),
(1024, 'Fight Club', 'Drama', '1999-10-15', 'Director X', 2005, 'English', 'USA', 63000000.00, 100853753.00, 139, 8.8, 67, 'Studio X', 'Released', 'R', 'Yes', GETDATE()),
(1025, 'The Social Network', 'Drama', '2010-10-01', 'Director Y', 2011, 'English', 'USA', 50000000.00, 224461770.00, 120, 7.7, 96, 'Studio Y', 'Released', 'PG-13', 'Yes', GETDATE()),
(1026, 'Shutter Island', 'Thriller', '2010-02-19', 'Director Z', 2012, 'English', 'USA', 80000000.00, 294804676.00, 138, 8.2, 82, 'Studio Z', 'Released', 'R', 'Yes', GETDATE()),
(1027, 'Inception 2', 'Sci-Fi', '2024-01-15', 'Director A', 2025, 'English', 'USA', 250000000.00, 800000000.00, 165, 8.3, 88, 'Studio A', 'Post-Production', 'PG-13', 'Yes', GETDATE()),
(1028, 'Dark City', 'Sci-Fi', '1998-02-27', 'Director B', 1999, 'English', 'USA', 27000000.00, 39725000.00, 100, 7.0, 73, 'Studio B', 'Released', 'R', 'No', GETDATE()),
(1029, 'The Prestige', 'Thriller', '2006-10-20', 'Director C', 2007, 'English', 'USA', 40000000.00, 109676311.00, 130, 8.5, 76, 'Studio C', 'Released', 'PG-13', 'Yes', GETDATE()),
(1030, 'Memento', 'Thriller', '2000-10-11', 'Director D', 2001, 'English', 'USA', 9000000.00, 40959930.00, 113, 8.4, 92, 'Studio D', 'Released', 'R', 'Yes', GETDATE()),
(1031, 'Gone Girl', 'Thriller', '2014-10-03', 'Director E', 2016, 'English', 'USA', 61000000.00, 369862135.00, 149, 8.1, 88, 'Studio E', 'Released', 'R', 'Yes', GETDATE()),
(1032, 'Whiplash', 'Drama', '2014-10-10', 'Director F', 2017, 'English', 'USA', 3300000.00, 49382651.00, 107, 8.5, 98, 'Studio F', 'Released', 'R', 'Yes', GETDATE()),
(1033, 'The Revenant', 'Action', '2015-12-25', 'Director G', 2018, 'English', 'USA', 135000000.00, 532308008.00, 156, 8.0, 88, 'Studio G', 'Released', 'R', 'Yes', GETDATE()),
(1034, 'Bridge of Spies', 'Drama', '2015-10-16', 'Director H', 2019, 'English', 'USA', 80000000.00, 72258145.00, 142, 7.0, 82, 'Studio H', 'Released', 'PG-13', 'No', GETDATE()),
(1035, 'Dunkirk', 'Action', '2017-07-21', 'Director I', 2020, 'English', 'UK', 150000000.00, 527046999.00, 106, 7.8, 93, 'Studio I', 'Released', 'PG-13', 'Yes', GETDATE());
**/
/**
CREATE TABLE Actors (
    ActorID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Nationality VARCHAR(50),
    Gender VARCHAR(10),
    Height VARCHAR(10),
    CareerStart INT,
    AwardsWon INT,
    NominationsCount INT,
    IsActive VARCHAR(10),
    IMDBPopularity DECIMAL(3, 2),
    SocialMediaFollowers BIGINT,
    Agency VARCHAR(100),
    LastProjectYear INT,
    SpecialtyGenre VARCHAR(50),
    CreatedDate DATETIME,
    ModifiedDate DATETIME
);
**/
/**
INSERT INTO Actors VALUES
(2001, 'Tom', 'Hanks', '2000-08-10', 'American', 'Female', '176 cm', 2002, 1, 2, 'No', 6.62, 16689210, 'Agency A', 2025, 'Sci-Fi', '2023-06-26 00:00:00', '2024-01-01 00:00:00'),
(2002, 'Leonardo', 'DiCaprio', '1960-05-16', 'French', 'Female', '167 cm', 1980, 4, 17, 'Yes', 6.13, 5615296, 'Agency B', 2021, 'Sci-Fi', '2023-07-15 00:00:00', '2024-11-09 00:00:00'),
(2003, 'Brad', 'Pitt', '1987-02-13', 'British', 'Male', '193 cm', 1997, 6, 10, 'Yes', 5.41, 47345007, 'Agency C', 2018, 'Adventure', '2024-02-12 00:00:00', '2024-02-02 00:00:00'),
(2004, 'Johnny', 'Depp', '1968-09-21', 'British', 'Male', '158 cm', 2012, 4, 16, 'No', 6.60, 22544951, 'Agency D', 2016, 'Adventure', '2024-08-28 00:00:00', '2024-06-07 00:00:00'),
(2005, 'Harrison', 'Ford', '1982-03-03', 'Australian', 'Male', '195 cm', 1982, 0, 14, 'No', 8.34, 24214470, 'Agency E', 2021, 'Drama', '2024-10-29 00:00:00', '2024-01-12 00:00:00'),
(2006, 'Will', 'Smith', '1968-09-25', 'American', 'Male', '188 cm', 1990, 2, 18, 'Yes', 7.82, 48293844, 'Agency F', 2023, 'Action', '2023-08-14 00:00:00', '2024-12-10 00:00:00'),
(2007, 'Christian', 'Bale', '1974-01-30', 'British', 'Male', '183 cm', 1991, 3, 15, 'Yes', 7.45, 9321456, 'Agency G', 2024, 'Drama', '2023-09-22 00:00:00', '2024-02-18 00:00:00'),
(2008, 'Robert', 'Downey', '1965-04-04', 'American', 'Male', '174 cm', 1985, 5, 22, 'Yes', 8.12, 51234567, 'Agency H', 2024, 'Action', '2023-10-30 00:00:00', '2024-03-25 00:00:00'),
(2009, 'Orlando', 'Bloom', '1977-01-13', 'British', 'Male', '181 cm', 1997, 1, 9, 'Yes', 6.89, 27345689, 'Agency I', 2022, 'Adventure', '2023-11-08 00:00:00', '2024-04-14 00:00:00'),
(2010, 'Keanu', 'Reeves', '1964-09-02', 'Canadian', 'Male', '186 cm', 1986, 0, 12, 'Yes', 7.56, 33421567, 'Agency J', 2024, 'Action', '2023-12-16 00:00:00', '2024-05-22 00:00:00'),
(2011, 'Matt', 'Damon', '1970-10-08', 'American', 'Male', '180 cm', 1988, 2, 14, 'Yes', 7.23, 29134568, 'Agency K', 2023, 'Action', '2024-01-24 00:00:00', '2024-06-30 00:00:00'),
(2012, 'Ryan', 'Gosling', '1980-11-12', 'Canadian', 'Male', '184 cm', 2001, 1, 13, 'Yes', 7.78, 25346789, 'Agency L', 2024, 'Drama', '2024-02-01 00:00:00', '2024-07-18 00:00:00'),
(2013, 'Mark', 'Wahlberg', '1971-06-05', 'American', 'Male', '173 cm', 1995, 0, 10, 'Yes', 6.91, 21234567, 'Agency M', 2023, 'Action', '2024-03-10 00:00:00', '2024-08-26 00:00:00'),
(2014, 'Ben', 'Affleck', '1972-01-15', 'American', 'Male', '193 cm', 1991, 2, 16, 'Yes', 6.78, 18345678, 'Agency N', 2022, 'Action', '2024-04-17 00:00:00', '2024-09-05 00:00:00'),
(2015, 'Chris', 'Evans', '1981-06-13', 'American', 'Male', '183 cm', 2000, 1, 15, 'Yes', 7.34, 34567890, 'Agency O', 2024, 'Action', '2024-05-25 00:00:00', '2024-10-13 00:00:00'),
(2016, 'Hugh', 'Jackman', '1968-10-12', 'Australian', 'Male', '188 cm', 1995, 4, 20, 'Yes', 7.89, 42345678, 'Agency P', 2023, 'Action', '2024-06-02 00:00:00', '2024-11-21 00:00:00'),
(2017, 'Kate', 'Winslet', '1975-10-05', 'British', 'Female', '170 cm', 1991, 4, 18, 'Yes', 7.45, 19876543, 'Agency Q', 2023, 'Drama', '2024-07-10 00:00:00', '2024-01-08 00:00:00'),
(2018, 'Emma', 'Watson', '1990-04-15', 'British', 'Female', '165 cm', 2001, 1, 8, 'Yes', 7.02, 48234567, 'Agency R', 2024, 'Drama', '2024-08-18 00:00:00', '2024-02-16 00:00:00'),
(2019, 'Angelina', 'Jolie', '1975-06-04', 'American', 'Female', '173 cm', 1990, 5, 20, 'No', 7.56, 38456789, 'Agency S', 2020, 'Action', '2024-09-26 00:00:00', '2024-03-24 00:00:00'),
(2020, 'Meryl', 'Streep', '1949-06-22', 'American', 'Female', '168 cm', 1971, 8, 21, 'Yes', 8.34, 12345678, 'Agency T', 2023, 'Drama', '2024-10-03 00:00:00', '2024-04-30 00:00:00'),
(2021, 'Sandra', 'Bullock', '1964-07-26', 'American', 'Female', '173 cm', 1990, 3, 14, 'Yes', 7.23, 21456789, 'Agency U', 2024, 'Action', '2024-11-11 00:00:00', '2024-06-08 00:00:00'),
(2022, 'Scarlett', 'Johansson', '1984-11-22', 'American', 'Female', '160 cm', 2002, 2, 17, 'Yes', 7.78, 45234567, 'Agency V', 2024, 'Action', '2023-12-19 00:00:00', '2024-07-16 00:00:00'),
(2023, 'Jennifer', 'Lawrence', '1990-08-15', 'American', 'Female', '173 cm', 2006, 1, 12, 'Yes', 7.89, 52345678, 'Agency W', 2023, 'Action', '2024-01-27 00:00:00', '2024-08-24 00:00:00'),
(2024, 'Natalie', 'Portman', '1981-06-09', 'American', 'Female', '160 cm', 1994, 1, 17, 'Yes', 7.45, 38234567, 'Agency X', 2022, 'Sci-Fi', '2024-02-04 00:00:00', '2024-09-11 00:00:00'),
(2025, 'Rachel', 'McAdams', '1978-11-17', 'Canadian', 'Female', '170 cm', 2001, 0, 10, 'Yes', 6.98, 17345678, 'Agency Y', 2023, 'Drama', '2024-03-14 00:00:00', '2024-10-19 00:00:00'),
(2026, 'Michelle', 'Pfeiffer', '1958-04-29', 'American', 'Female', '173 cm', 1982, 4, 16, 'No', 7.34, 11234567, 'Agency Z', 2019, 'Drama', '2024-04-22 00:00:00', '2024-11-27 00:00:00'),
(2027, 'Cameron', 'Diaz', '1972-12-30', 'American', 'Female', '173 cm', 1994, 0, 12, 'No', 6.78, 24345678, 'Agency A', 2014, 'Comedy', '2024-05-30 00:00:00', '2024-01-14 00:00:00'),
(2028, 'Blake', 'Lively', '1987-08-25', 'American', 'Female', '177 cm', 2005, 0, 8, 'Yes', 6.91, 31456789, 'Agency B', 2024, 'Romance', '2024-07-08 00:00:00', '2024-02-22 00:00:00'),
(2029, 'Anne', 'Hathaway', '1982-11-12', 'American', 'Female', '173 cm', 1999, 2, 15, 'Yes', 7.56, 28345678, 'Agency C', 2023, 'Drama', '2024-08-16 00:00:00', '2024-03-30 00:00:00'),
(2030, 'Penelope', 'Cruz', '1974-04-28', 'Spanish', 'Female', '168 cm', 1992, 1, 10, 'Yes', 7.12, 15234567, 'Agency D', 2023, 'Drama', '2024-09-24 00:00:00', '2024-05-08 00:00:00'),
(2031, 'Charlize', 'Theron', '1975-08-07', 'South African', 'Female', '180 cm', 1994, 1, 14, 'Yes', 7.89, 33234567, 'Agency E', 2023, 'Action', '2024-10-31 00:00:00', '2024-06-15 00:00:00'),
(2032, 'Cate', 'Blanchett', '1969-05-14', 'Australian', 'Female', '177 cm', 1992, 2, 18, 'Yes', 7.67, 19345678, 'Agency F', 2024, 'Drama', '2023-11-08 00:00:00', '2024-07-23 00:00:00'),
(2033, 'Denzel', 'Washington', '1954-12-28', 'American', 'Male', '188 cm', 1981, 2, 10, 'Yes', 8.23, 14234567, 'Agency G', 2024, 'Drama', '2023-12-16 00:00:00', '2024-08-31 00:00:00'),
(2034, 'Morgan', 'Freeman', '1937-06-01', 'American', 'Male', '188 cm', 1971, 1, 8, 'Yes', 8.56, 8345678, 'Agency H', 2023, 'Drama', '2024-01-24 00:00:00', '2024-09-18 00:00:00'),
(2035, 'Samuel', 'Jackson', '1948-12-09', 'American', 'Male', '189 cm', 1972, 0, 14, 'Yes', 8.12, 13456789, 'Agency I', 2024, 'Action', '2024-02-01 00:00:00', '2024-10-26 00:00:00');
**/
/**
CREATE TABLE MovieCasts (
    CastID INT PRIMARY KEY NOT NULL,
    MovieID INT NOT NULL,
    ActorID INT NOT NULL,
    CharacterName VARCHAR(100),
    RoleType VARCHAR(20),
    CastingDate DATE,
    SalaryOffered DECIMAL(12, 2),
    SalaryPaid DECIMAL(12, 2),
    ScreenTime INT,
    IsLeadRole VARCHAR(10),
    CharacterDescription VARCHAR(255),
    ShootingDaysWorked INT,
    PerformanceRating DECIMAL(3, 1),
    CriticalAcclaim VARCHAR(30),
    AwardNominated VARCHAR(10),
    CreatedDate DATETIME,
    ModifiedDate DATETIME,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);
**/
/**
INSERT INTO MovieCasts VALUES
(3001, 1028, 2011, 'Character A', 'Cameo', '2024-04-27', 43617810.00, 8879677.00, 114, 'Yes', 'A character in the movie', 79, 8.7, 'Below Average', 'No', '2024-01-06 00:00:00', '2024-01-13 00:00:00'),
(3002, 1035, 2016, 'Character B', 'Cameo', '2021-02-12', 43799183.00, 11427043.00, 115, 'No', 'A character in the movie', 46, 8.3, 'Good', 'No', '2024-12-25 00:00:00', '2024-10-15 00:00:00'),
(3003, 1015, 2033, 'Character C', 'Lead', '2022-10-07', 38336648.00, 32397736.00, 48, 'No', 'A character in the movie', 88, 8.1, 'Average', 'No', '2023-05-06 00:00:00', '2024-02-13 00:00:00'),
(3004, 1011, 2035, 'Character D', 'Supporting', '2024-05-19', 37813185.00, 35016228.00, 149, 'No', 'A character in the movie', 81, 6.8, 'Excellent', 'Yes', '2023-06-13 00:00:00', '2024-07-06 00:00:00'),
(3005, 1004, 2002, 'Character E', 'Cameo', '2023-04-05', 47658429.00, 28175843.00, 167, 'Yes', 'A character in the movie', 49, 6.7, 'Average', 'No', '2023-03-09 00:00:00', '2024-07-30 00:00:00'),
(3006, 1018, 2025, 'Character F', 'Supporting', '2023-07-18', 21345678.00, 19876543.00, 95, 'No', 'A character in the movie', 62, 8.4, 'Excellent', 'Yes', '2023-07-20 00:00:00', '2024-08-10 00:00:00'),
(3007, 1022, 2008, 'Character G', 'Lead', '2022-11-02', 35000000.00, 33500000.00, 165, 'Yes', 'A character in the movie', 105, 8.9, 'Excellent', 'Yes', '2022-11-05 00:00:00', '2024-09-12 00:00:00'),
(3008, 1031, 2006, 'Character H', 'Supporting', '2023-08-14', 18234567.00, 16789123.00, 78, 'No', 'A character in the movie', 51, 7.6, 'Good', 'No', '2023-08-16 00:00:00', '2024-10-20 00:00:00'),
(3009, 1027, 2023, 'Character I', 'Lead', '2024-02-10', 45000000.00, 42000000.00, 175, 'Yes', 'A character in the movie', 120, 8.6, 'Excellent', 'Yes', '2024-02-12 00:00:00', '2024-11-25 00:00:00'),
(3010, 1012, 2020, 'Character J', 'Supporting', '2023-06-05', 12345678.00, 11234567.00, 85, 'No', 'A character in the movie', 58, 7.9, 'Good', 'Yes', '2023-06-07 00:00:00', '2024-01-15 00:00:00'),
(3011, 1009, 2017, 'Character K', 'Lead', '2022-12-20', 32000000.00, 30500000.00, 160, 'Yes', 'A character in the movie', 98, 8.8, 'Excellent', 'Yes', '2022-12-22 00:00:00', '2024-02-18 00:00:00'),
(3012, 1003, 2007, 'Character L', 'Lead', '2021-09-15', 28000000.00, 26500000.00, 155, 'Yes', 'A character in the movie', 95, 8.7, 'Excellent', 'Yes', '2021-09-17 00:00:00', '2024-03-22 00:00:00'),
(3013, 1024, 2010, 'Character M', 'Supporting', '2023-05-08', 15234567.00, 14123456.00, 92, 'No', 'A character in the movie', 67, 8.2, 'Good', 'No', '2023-05-10 00:00:00', '2024-04-28 00:00:00'),
(3014, 1016, 2003, 'Character N', 'Lead', '2020-02-14', 30000000.00, 28500000.00, 170, 'Yes', 'A character in the movie', 110, 8.9, 'Excellent', 'Yes', '2020-02-16 00:00:00', '2024-05-30 00:00:00'),
(3015, 1002, 2002, 'Character O', 'Lead', '2023-01-10', 38000000.00, 36000000.00, 168, 'Yes', 'A character in the movie', 108, 8.6, 'Excellent', 'Yes', '2023-01-12 00:00:00', '2024-07-08 00:00:00'),
(3016, 1007, 2010, 'Character P', 'Supporting', '2022-08-22', 16234567.00, 15123456.00, 88, 'No', 'A character in the movie', 64, 8.1, 'Good', 'No', '2022-08-24 00:00:00', '2024-08-14 00:00:00'),
(3017, 1021, 2009, 'Character Q', 'Supporting', '2023-03-05', 13456789.00, 12345678.00, 82, 'No', 'A character in the movie', 55, 7.8, 'Good', 'No', '2023-03-07 00:00:00', '2024-09-16 00:00:00'),
(3018, 1010, 2020, 'Character R', 'Lead', '2021-07-18', 25000000.00, 23500000.00, 150, 'Yes', 'A character in the movie', 92, 8.5, 'Excellent', 'Yes', '2021-07-20 00:00:00', '2024-10-18 00:00:00'),
(3019, 1020, 2024, 'Character S', 'Supporting', '2023-09-12', 14567890.00, 13456789.00, 80, 'No', 'A character in the movie', 52, 7.7, 'Good', 'No', '2023-09-14 00:00:00', '2024-11-20 00:00:00'),
(3020, 1025, 2031, 'Character T', 'Supporting', '2024-04-20', 17654321.00, 16543210.00, 96, 'No', 'A character in the movie', 70, 8.3, 'Good', 'Yes', '2024-04-22 00:00:00', '2024-12-22 00:00:00'),
(3021, 1019, 2014, 'Character U', 'Lead', '2022-05-10', 22000000.00, 20500000.00, 145, 'Yes', 'A character in the movie', 88, 8.4, 'Excellent', 'Yes', '2022-05-12 00:00:00', '2024-01-25 00:00:00'),
(3022, 1006, 2015, 'Character V', 'Supporting', '2023-02-28', 11234567.00, 10234567.00, 75, 'No', 'A character in the movie', 48, 7.6, 'Good', 'No', '2023-03-02 00:00:00', '2024-02-28 00:00:00'),
(3023, 1032, 2005, 'Character W', 'Supporting', '2024-06-15', 19876543.00, 18765432.00, 102, 'No', 'A character in the movie', 76, 8.6, 'Excellent', 'Yes', '2024-06-17 00:00:00', '2024-04-05 00:00:00'),
(3024, 1001, 2019, 'Character X', 'Lead', '2023-11-08', 42000000.00, 39500000.00, 172, 'Yes', 'A character in the movie', 115, 8.7, 'Excellent', 'Yes', '2023-11-10 00:00:00', '2024-05-10 00:00:00'),
(3025, 1008, 2004, 'Character Y', 'Lead', '2021-04-22', 26000000.00, 24500000.00, 158, 'Yes', 'A character in the movie', 100, 8.5, 'Excellent', 'Yes', '2021-04-24 00:00:00', '2024-06-15 00:00:00'),
(3026, 1017, 2020, 'Character Z', 'Supporting', '2022-10-30', 12456789.00, 11567890.00, 79, 'No', 'A character in the movie', 54, 7.9, 'Good', 'No', '2022-11-01 00:00:00', '2024-07-20 00:00:00'),
(3027, 1030, 2013, 'Character AA', 'Supporting', '2024-01-18', 18765432.00, 17654321.00, 98, 'No', 'A character in the movie', 72, 8.4, 'Excellent', 'Yes', '2024-01-20 00:00:00', '2024-08-25 00:00:00'),
(3028, 1014, 2018, 'Character AB', 'Lead', '2023-12-10', 24000000.00, 22500000.00, 140, 'Yes', 'A character in the movie', 85, 8.3, 'Good', 'No', '2023-12-12 00:00:00', '2024-09-30 00:00:00'),
(3029, 1023, 2021, 'Character AC', 'Supporting', '2024-03-25', 16789123.00, 15678912.00, 90, 'No', 'A character in the movie', 61, 8.0, 'Good', 'No', '2024-03-27 00:00:00', '2024-11-05 00:00:00'),
(3030, 1005, 2022, 'Character AD', 'Lead', '2023-07-14', 41000000.00, 38500000.00, 170, 'Yes', 'A character in the movie', 112, 8.8, 'Excellent', 'Yes', '2023-07-16 00:00:00', '2024-12-10 00:00:00'),
(3031, 1013, 2012, 'Character AE', 'Lead', '2022-06-20', 20000000.00, 18500000.00, 135, 'Yes', 'A character in the movie', 80, 8.1, 'Good', 'No', '2022-06-22 00:00:00', '2024-01-18 00:00:00'),
(3032, 1026, 2032, 'Character AF', 'Supporting', '2024-02-08', 15234567.00, 14123456.00, 86, 'No', 'A character in the movie', 60, 8.2, 'Good', 'Yes', '2024-02-10 00:00:00', '2024-02-25 00:00:00'),
(3033, 1029, 2029, 'Character AG', 'Supporting', '2023-04-12', 17345678.00, 16234567.00, 94, 'No', 'A character in the movie', 68, 8.5, 'Excellent', 'Yes', '2023-04-14 00:00:00', '2024-04-02 00:00:00'),
(3034, 1033, 2028, 'Character AH', 'Lead', '2022-09-05', 30000000.00, 28000000.00, 162, 'Yes', 'A character in the movie', 102, 8.6, 'Excellent', 'Yes', '2022-09-07 00:00:00', '2024-05-08 00:00:00'),
(3035, 1034, 2030, 'Character AI', 'Supporting', '2024-05-19', 14567890.00, 13456789.00, 84, 'No', 'A character in the movie', 56, 7.8, 'Good', 'No', '2024-05-21 00:00:00', '2024-06-12 00:00:00');
**/

select top 1 * from Actors
select top 1 * from MovieCasts
select top 1 * from Movies


--1. categorise movies by box office collection--
select Title,ReleaseYear,BoxOfficeCollection,
case
when BoxOfficeCollection > 1073288843.00 then 'Blockbuster'
when BoxOfficeCollection > 500000000.00  then 'Hit'
else 'Average'
end as Moviecategory

from Movies 


--2 classify the movies by genre

select Title,Director,Language,
case Genre
when  'Action' then 'Action movie'
when 'Drama' then 'drama movie'
else 'other genre'
end as Genretype

from Movies


-- determine moviestatus for display
select top 20 * from Movies


select Title, ReleaseYear,Language,BoxOfficeCollection,
case MovieStatus
when 'Pre-Production' then 'About to release'
when  'Released' then 'realease'
else 'others'
end as allmoviestatus
from Movies


--4. classify by language

select top 20 * from Movies

select Language,Country,BoxOfficeCollection,
case Language
when 'Spanish' then 'internation_spanish'
when 'English' then 'Hoolywood'
when 'German'  then 'International_German'
else 'Other_international'
end as Movies_by_Language
from Movies


--5. Assign awards category by actors

select top 20 * from Movies

select top 20 * from Actors

select FirstName,LastName, AwardsWon,Nationality,
case 
when AwardsWon > 4 then 'blockbuster'
when AwardsWon > 3 then 'hit'
else 'otherHits'
end as award_type
from Actors









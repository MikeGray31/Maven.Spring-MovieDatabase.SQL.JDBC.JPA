INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Lavalantula', 83, 'Horror', 4.7, 'TV-14');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Waltz With Bashir', 90, 'Documentary', 80, 'R');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Spaceballs', 96, 'Comedy', 7.1, 'PG');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Monsters Inc.', 92, 'Animation', 8.1, 'G');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Sleeping with the Enemy', 118, 'Thriller', 7.1, 'R');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Baader Meinhof Komplex, Der', 106, 'Action', 7.0, 'R');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Tommy', 117, 'Musical', 2.4, 'PG');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Fort Bliss', 160, 'War', 6.0, 'R');
INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Cleopatra', 173, 'Comedy', 9.1, 'R');

SELECT * FROM Movies WHERE Genre = 'Sci-Fi';

SELECT * FROM Movies WHERE IMDB_Score >= 6.5;

SELECT * FROM Movies WHERE Rating IN ('PG', 'G') AND Runtime < 100;

SELECT Genre, AVG(IMDB_Score) FROM Movies GROUP BY Genre;

UPDATE Movies SET Rating = 'R' WHERE Title = 'Starship Troopers';

SELECT Id, Title, Rating FROM Movies WHERE Genre IN ('Documentary', 'Horror');

SELECT Rating, MAX(IMDB_Score), MIN(IMDB_Score), AVG(IMDB_Score) FROM Movies GROUP BY Rating;

SELECT Rating, MAX(IMDB_Score), MIN(IMDB_Score), AVG(IMDB_Score) FROM Movies GROUP BY Rating HAVING COUNT(*) > 1;

DELETE FROM Movies WHERE Rating = 'R';
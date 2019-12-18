USE codeup_test_db;
SELECT 'Albums' AS 'Pink Floyd';
SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT 'release' AS 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'genre' AS 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT '1990''s' AS 'albums released in...';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT 'less than 20 million ' AS 'sale''s certified';
SELECT name FROM albums WHERE name = sales <20.0;
SELECT 'rock' AS 'genre';
SELECT name FROM albums WHERE genre = 'rock';



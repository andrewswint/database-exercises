CREATE DATABASE IF NOT EXISTS music_db;
USE music_db;
CREATE TABLE songs (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR(50) NOT NULL,
song_title VARCHAR(50) NOT NULL,
release_date INT,
genre VARCHAR(50) NOT NULL,
song_length DOUBLE,
PRIMARY KEY (id)
);

ALTER TABLE songs
    MODIFY release_date DATE,
    MODIFY genre VARCHAR(1000),
    MODIFY song_length DECIMAL;

TRUNCATE TABLE songs;
INSERT INTO songs (artist, song_title, release_date, genre, song_length)
VALUE('congue elementum', 'cubilia curae duis', '2014-06-04', 'cursus urna', 3.09),
('metus aenean', 'mi nulla ac', '2001-06-19', 'eget massa tempor convallis nulla neque libero', 3.78),
('eu', 'massa id nisl', '2011-08-01', 'justo morbi ut odio', 2.98),
('vitae', 'orci pede venenatis non sodales', '2017-11-12', 'pharetra magna ac consequat metus sapien ut nunc', 1.87),
('non lectus', 'orci luctus et', '2007-02-07', 'erat volutpat in congue etiam justo etiam pretium iaculis', 5.51),
('eu felis', 'luctus et ultrices posuere', '2002-07-04', 'convallis eget', 4.74),
('risus', 'vivamus vel nulla eget eros', '2006-07-07', 'nulla integer pede justo lacinia eget tincidunt eget', 8.03),
('at diam', 'ultrices libero', '2003-05-27', 'aliquam non mauris morbi non lectus aliquam sit amet', 3.39),
('mauris vulputate', 'turpis sed ante vivamus', '2009-09-22', 'tristique', 1.78),
('elementum ligula', 'augue vestibulum', '2001-12-29', 'suspendisse', 2.14),
('et eros', 'tristique fusce congue', '2018-07-04', 'ut nulla sed accumsan felis ut at dolor', 2.27),
('est', 'vestibulum sed magna', '2011-12-29', 'praesent blandit lacinia erat vestibulum sed magna', 7.17),
('congue elementum', 'id consequat in consequat', '2006-08-18', 'ultricies eu nibh quisque id justo sit', 3.45);

SELECT artist
FROM songs
WHERE song_title = 'cubilia curae duis';

SELECT song_title, song_length
FROM songs
ORDER BY song_length desc LIMIT 3;

SELECT COUNT(*) FROM songs;

SELECT artist, COUNT(*)
FROM songs
GROUP BY artist
ORDER BY COUNT(*) desc LIMIT 1;


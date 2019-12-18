USE codeup_test_db;
SELECT 'All albums' AS '';
UPDATE albums
SET sales = (sales*10);
SELECT * FROM albums;
SELECT 'All albums before 1980' AS '';
UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;
SELECT * FROM albums;
SELECT 'All albums by Michael Jackson' AS '';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums;

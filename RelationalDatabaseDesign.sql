-- THE JOIN OPERATION
-- SELECT

SELECT album.title, artist.name FROM album JOIN artist ON
album.artist_id = artist.artist_id;

SELECT album.title, album.artist_id, artist.artist_id, artist.name FROM album JOIN artist ON
album.artist_id = artist.artist_id;

SELECT album.title, album.artist_id, artist.artist_id, artist.name FROM album JOIN artist ON
album.artist_id = artist.artist_id;

SELECT track.title, track.genre_id, genre.genre_id, genre.name FROM track JOIN genre ON
track.genre_id = genre.genre_id;

SELECT track.title, genre.name FROM track JOIN genre ON
track.genre_id = genre.genre_id;

SELECT track.title, artist.name, album.title, genre.name FROM track JOIN genre JOIN album JOIN artist ON
track.genre_id = genre.genre_id AND track.album_id = album.album_id AND album.artist_id = artist.artist_id;
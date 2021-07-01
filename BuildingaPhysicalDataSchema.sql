create database music default character set utf8;

use music;


create table artist(
	artist_id INTEGER NOT NULL AUTO_INCREMENT,
	name VARCHAR(255),
	Primary Key(artist_id)
) ENGINE = InnoDB;


create table album(
	album_id INTEGER NOT NULL AUTO_INCREMENT,
	title VARCHAR(255),
	artist_id INTEGER,
	PRIMARY KEY(album_id),
	INDEX USING BTREE(title),
	CONSTRAINT FOREIGN KEY(artist_id) REFERENCES artist(artist_id)
	ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB;


create table genre(
	genre_id INTEGER NOT NULL AUTO_INCREMENT,
	name VARCHAR(255),
	PRIMARY KEY(genre_id)
)ENGINE = InnoDB;

create table track(
	track_id INTEGER NOT NULL AUTO_INCREMENT,
	title VARCHAR(255),
	len INTEGER,
	rting INTEGER,
	count INTEGER,
	album_id INTEGER, 
	genre_id INTEGER,
	PRIMARY KEY(track_id),
	INDEX USING BTREE (title),
	CONSTRAINT FOREIGN KEY (album_id) REFERENCES album(album_id)
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FOREIGN KEY(genre_id) REFERENCES genre(genre_id)
		ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB;

INSERT INTO ARTIST(name) VALUES('Pink Floyd');
INSERT INTO ARTIST(name) VALUES('The Doors');

INSERT INTO GENRE(name) VALUES('Rock Psychedelic');
INSERT INTO GENRE(name) VALUES('Rock and Blues');

INSERT INTO ALBUM(title, artist_id) VALUES('The Division Bell', 1);
INSERT INTO ALBUM(title, artist_id) VALUES('LA. WOMAN', 2);

INSERT INTO TRACK(title, rting, len, count, album_id , genre_id) VALUES('Lost For Words', 5,297,0,1,1);
INSERT INTO TRACK(title, rting, len, count, album_id , genre_id) VALUES('La Woman', 5,297,0,2,2);
INSERT INTO TRACK(title, rting, len, count, album_id , genre_id) VALUES('Wish Your Where Here', 5,297,0,1,1);
INSERT INTO TRACK(title, rting, len, count, album_id , genre_id) VALUES('Love Her Madly', 5,297,0,2,2);








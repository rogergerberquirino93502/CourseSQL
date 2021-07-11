-- Many to Many

--START WITH A FRESH DATABASE

CREATE TABLE Account(
	account_id INTEGER NOT NULL AUTO_INCREMENT,
	email VARCHAR(128) UNIQUE,
	name VARCHAR(128),
	PRIMARY KEY(account_id)
)ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Course(
	course_id INTEGER NOT NULL AUTO_INCREMENT,
	title VARCHAR(128) UNIQUE,
	PRIMARY KEY(course_id)
)ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Member(
	account_id INTEGER,
	course_id INTEGER,
	role INTEGER,

	CONSTRAINT FOREIGN KEY (account_id) REFERENCES Account(account_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course(course_id)
	ON DELETE CASCADE ON UPDATE CASCADE,

	PRIMARY KEY(account_id, course_id)
)ENGINE=InnoDB CHARACTER SET=utf8;

INSERT INTO Account (name, email) VALUES('Jane', 'jane@prueba.com');
INSERT INTO Account (name, email) VALUES('Ed', 'ed@prueba.com');
INSERT INTO Account (name, email) VALUES('Sue', 'sue@prueba.com');


INSERT INTO Course (title) VALUES('PHP');
INSERT INTO Course (title) VALUES('Python');
INSERT INTO Course (title) VALUES('Perl');
INSERT INTO Course (title) VALUES('SQL');

INSERT INTO MEMBER (account_id, course_id, role) VALUES(1, 1, 1);
INSERT INTO MEMBER (account_id, course_id, role) VALUES(2, 1, 0);
INSERT INTO MEMBER (account_id, course_id, role) VALUES(3, 1, 0);

INSERT INTO MEMBER (account_id, course_id, role) VALUES(1, 2, 0);
INSERT INTO MEMBER (account_id, course_id, role) VALUES(2, 3, 1);


INSERT INTO MEMBER (account_id, course_id, role) VALUES(2, 3, 1);
INSERT INTO MEMBER (account_id, course_id, role) VALUES(3, 3, 0);

SELECT Account.name, Member.role, Course.title
FROM Account JOIN Member JOIN Course
ON Member.account_id = Account.account_id AND 
Member.course_id = Course.course_id
ORDER BY Course.title, Member.role DESC, Account,name;

DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS `User`;
DROP TABLE IF EXISTS Course;

CREATE TABLE `User` (
    user_id     INTEGER NOT NULL AUTO_INCREMENT,
    name        VARCHAR(128) UNIQUE,
    PRIMARY KEY(user_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Course (
    course_id     INTEGER NOT NULL AUTO_INCREMENT,
    title         VARCHAR(128) UNIQUE,
    PRIMARY KEY(course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Member (
    user_id       INTEGER,
    course_id     INTEGER,
    role          INTEGER,

    CONSTRAINT FOREIGN KEY (user_id) REFERENCES `User` (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course (course_id)
       ON DELETE CASCADE ON UPDATE CASCADE,

    PRIMARY KEY (user_id, course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;
DROP TABLE Member;
DROP TABLE Course;
DROP TABLE User;

INSERT INTO User(name) VALUE('Cadance');
INSERT INTO User(name) VALUE('Allice');
INSERT INTO User(name) VALUE('Katriona');
INSERT INTO User(name) VALUE('Maura');
INSERT INTO User(name) VALUE('Niro');
INSERT INTO User(name) VALUE('Paidamoyo');
INSERT INTO User(name) VALUE('Hawaa');
INSERT INTO User(name) VALUE('Reeha');
INSERT INTO User(name) VALUE('Ronald');
INSERT INTO User(name) VALUE('Tehzeeb');
INSERT INTO User(name) VALUE('Roslin');
INSERT INTO User(name) VALUE('Alekzander');
INSERT INTO User(name) VALUE('Livia');
INSERT INTO User(name) VALUE('Michelle');
INSERT INTO User(name) VALUE('Neshawn');

INSERT INTO Course(title) VALUES('si106');
INSERT INTO Course(title) VALUES('si110');
INSERT INTO Course(title) VALUES('si206');

INSERT INTO Member(user_id ,course_id, role) VALUES(1, 1, 1); 
INSERT INTO Member(user_id ,course_id, role) VALUES(2, 1, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(3, 1, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(4, 1, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(5, 1, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(6, 2, 1); 
INSERT INTO Member(user_id ,course_id, role) VALUES(7, 2, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(8, 2, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(9, 2, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(10, 2, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(11, 3, 1); 
INSERT INTO Member(user_id ,course_id, role) VALUES(12, 3, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(13, 3, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(14, 3, 0); 
INSERT INTO Member(user_id ,course_id, role) VALUES(15, 3, 0); 

SELECT `User`.name, Course.title, Member.role
    FROM `User` JOIN Member JOIN Course
    ON `User`.user_id = Member.user_id AND Member.course_id = Course.course_id
    ORDER BY Course.title, Member.role DESC, `User`.name
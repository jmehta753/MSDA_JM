DROP DATABASE IF EXISTS MOVIES;

CREATE DATABASE MOVIES;

USE MOVIES;

DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS UserRatings;
DROP TABLE IF EXISTS Users;

CREATE TABLE Movies 
(
  MovieId int primary key,
  GenreTags varchar(400) NOT NULL,
  GuidanceRating varchar(40) NOT NULL,
  MovieName varchar(1000) NOT NULL,  
  ReleaseDate date NOT NULL,  
  Budget double NULL,
  CumulativeEarnings double NULL
);

CREATE TABLE Users 
(
  UserId int primary key,
  FirstName varchar(400) NOT NULL,
  LastName varchar(400) NULL,
  State varchar(2) NULL,  
  Age int NULL,  
  Gender char NULL,
  UserType char NULL
);

CREATE TABLE UserRatings 
(
  UserId int NOT NULL,
  MovieId int NOT NULL,
  Rating int NOT NULL,
  CONSTRAINT FK_USERID FOREIGN KEY (UserId)
  REFERENCES Users(UserId)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
  CONSTRAINT FK_MOVIEID FOREIGN KEY (MovieId)
  REFERENCES Movies(MovieId)
  ON DELETE CASCADE
  ON UPDATE CASCADE  
);

INSERT INTO Users (UserId,FirstName,LastName,State,Age,Gender,UserType) VALUES ('1','Sebastian','Vasquez','NJ','33','M','U');
INSERT INTO Users (UserId,FirstName,LastName,State,Age,Gender,UserType) VALUES ('2','John','Olsen','NJ','46','M','C');
INSERT INTO Users (UserId,FirstName,LastName,State,Age,Gender,UserType) VALUES ('3','Gunjan','Malhotra','NJ','34','F','U');
INSERT INTO Users (UserId,FirstName,LastName,State,Age,Gender,UserType) VALUES ('4','Rebecca','Smith','NY','29','F','C');
INSERT INTO Users (UserId,FirstName,LastName,State,Age,Gender,UserType) VALUES ('5','Manish','Gulati','PA','31','M','U');
INSERT INTO Users (UserId,FirstName,LastName,State,Age,Gender,UserType) VALUES ('6','Aimee','Tran','ON','29','F','U');
INSERT INTO Users (UserId,FirstName,LastName,State,Age,Gender,UserType) VALUES ('7','Vincent',NULL,'NY','27','M','U');
INSERT INTO Users (UserId,FirstName,LastName,State,Age,Gender,UserType) VALUES ('8','Ryan','Murphy','NJ','28','M','C');

INSERT INTO Movies (MovieId,GenreTags,GuidanceRating,MovieName,ReleaseDate,Budget,CumulativeEarnings) VALUES ('1','SciFi, Adventure','PG-13','Rogue One','20161212','150','400');
INSERT INTO Movies (MovieId,GenreTags,GuidanceRating,MovieName,ReleaseDate,Budget,CumulativeEarnings) VALUES ('2','Adventure','R','XXX : Xander Cage','20170125','130','240');
INSERT INTO Movies (MovieId,GenreTags,GuidanceRating,MovieName,ReleaseDate,Budget,CumulativeEarnings) VALUES ('3','Drama','PG-13','Fences','20170117','90','300');
INSERT INTO Movies (MovieId,GenreTags,GuidanceRating,MovieName,ReleaseDate,Budget,CumulativeEarnings) VALUES ('4','SciFi, Drama','PG-13','Arrival','20161212','110','250');
INSERT INTO Movies (MovieId,GenreTags,GuidanceRating,MovieName,ReleaseDate,Budget,CumulativeEarnings) VALUES ('5','Drama, Comedy','U','La La Land','20161205','95','350');
INSERT INTO Movies (MovieId,GenreTags,GuidanceRating,MovieName,ReleaseDate,Budget,CumulativeEarnings) VALUES ('6','Drama, Comedy','U','Manchester by the sea','20161205','85','290');

INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (1,1,5);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (1,2,5);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (1,3,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (1,4,2);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (1,5,2);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (1,6,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (2,1,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (2,2,5);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (2,3,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (2,4,3);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (2,5,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (2,6,3);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (3,1,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (3,2,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (3,3,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (3,4,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (3,5,3);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (3,6,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (4,1,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (4,2,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (4,3,5);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (4,4,3);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (4,5,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (4,6,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (5,1,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (5,2,2);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (5,3,2);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (5,4,2);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (5,5,2);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (5,6,3);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (6,1,3);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (6,2,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (6,3,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (6,4,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (6,5,2);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (6,6,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (7,1,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (7,2,2);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (7,3,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (7,4,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (7,5,2);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (7,6,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (8,1,4);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (8,2,1);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (8,3,5);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (8,4,3);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (8,5,3);
INSERT INTO UserRatings (UserId,MovieId,Rating) VALUES (8,6,1);



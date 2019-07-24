DROP DATABASE IF EXISTS FantasyDraft;

CREATE DATABASE FantasyDraft;
GO

USE FantasyDraft;
GO

DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS teams;


CREATE TABLE Categories
(
    id INTEGER PRIMARY KEY,
    name VARCHAR(250)

);

INSERT INTO categories
    (id, name)
VALUES
    (1, 'Quarterback');
INSERT INTO categories
    (id, name)
VALUES
    (2, 'Runningback');
INSERT INTO categories
    (id, name)
VALUES
    (3, 'Wide Reciever');
INSERT INTO categories
    (id, name)
VALUES
    (4, 'Tight End');
INSERT INTO categories
	(id, name)
VALUES
    (5, 'Kicker');
INSERT INTO categories
	(id, name)
VALUES
    (6, 'Defense');




CREATE TABLE Players 
(
    id integer identity,
    category_id INTEGER NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
	is_available bit,
	constraint pk_Players primary key (id),   
); 

create table Teams 
(
	id integer identity,
	TeamsPlayersId int not null, 
	name nvarchar (50) not null,
	constraint pk_Teams primary key (id),
	constraint fk_TeamsPlayers foreign key (TeamsPlayersId) references Players(Id), 
	
);

create table DraftRoster
(
	id integer identity, 
	TeamId int, 
	PlayerId int, 
	RoundNumber int, 
	constraint pk_DraftRoster primary key (id),
	constraint fk_DraftRosterTeams foreign key (TeamId) references Teams (id),
	constraint fk_DraftRosterPlayers foreign key (PlayerId) references Players(id),
);

	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Baker', 'Mayfield', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Tom', 'Brady', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Aaron', 'Rodgers', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Ben', 'Rothelisburger', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Andy', 'Dalton', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Lamar', 'Jackson', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Matt', 'Ryan', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Drew', 'Brees', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Patrick', 'Mahomes', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Derek', 'Carr', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Sam', 'Darnold', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (1, 'Nick', 'Foles', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Nick', 'Chubb', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Kareem', 'Hunt', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Duke', 'Johnson', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Joe', 'Mixon', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'LeVeon', 'Bell', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Mark', 'Ingram', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Adrian', 'Peterson', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Sony', 'Michel', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Leonard', 'Fournette', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Todd', 'Gurley', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Alvin', 'Kamara', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Jordan', 'Howard', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (2, 'Christian', 'McCaffrey', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'ODell', 'Beckham', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Tyler', 'Boyd', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Jimmy', 'Hands', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Jarvis', 'Landry', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Antonio', 'Callaway', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Thomas', 'Tortle', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'James', 'Gardner', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Jimmy', 'Falon', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'John', 'Tayllor', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Dylan', 'Cavano', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Colin', 'Cavano', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Brad', 'Pitt', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Taylor', 'Timothy', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Peter', 'Cottontale', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Jordan', 'Ramsey', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Eli', 'Whitney', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Fifty', 'Cent', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Big', 'Papa', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Miles', 'Boykin', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Christian', 'Blake', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Amari', 'Cooper', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Antonio', 'Brown', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Juju', 'Schuster', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Brandon', 'Cooks', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Sammie', 'Cobb', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'George', 'Ruth', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Austin', 'Carr', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Tristan', 'Thompson', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Wally', 'White', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (3, 'Zane', 'Brown', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Jared', 'Cook', 0);
	INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'David', 'Njoku', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Marty', 'Williams', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Troy', 'Cook', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Tyler', 'Eifert', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Mark', 'Bavaro', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Mark', 'Murk', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Jim', 'Jeffries', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Charles', 'Clay', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Charles', 'Orson', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Blake', 'Bell', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Winston', 'Salem', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Jake', 'Butt', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Trey', 'Burton', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Derek', 'Carrier', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Eric', 'Tomlinson', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Danny', 'Crasto', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Clive', 'Owen', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Mark', 'Wahlburg', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Kahale', 'Warring', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Benjamin', 'Watson', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (4, 'Jason', 'Witten', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Paul', 'Legget', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Kicker', 'McKicker', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Paul', 'Thompson', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Leroy', 'Hoarse', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Game', 'Manager', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Out', 'Ofnames', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Sammie', 'Coats', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Sunny', 'Post', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Orson', 'Corner', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Senior', 'Punts', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Darren', 'Zach', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (5, 'Wild', 'Willie', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Cleveland', 'Browns', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Pittsburgh', 'Steelers', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Indianapolis', 'Colts', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Chicago', 'Bears', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'New England', 'Patriots', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Baltimore', 'Ravens', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Atlanta', 'Falcons', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Oakland', 'Raiders', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Tampa Bay', 'Bucs', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Miami', 'Dolphins', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'Seattle', 'Seahawks', 0);
INSERT INTO players
    (category_id, first_name, last_name, is_available)
VALUES
    (6, 'New Orleans', 'Saints', 0);









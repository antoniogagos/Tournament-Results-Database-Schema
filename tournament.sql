-- Table definitions for the tournament project.

-- Delete the database if it exists already
DROP DATABASE IF EXISTS tournament;

-- Create database
CREATE DATABASE tournament;

-- Connect to the database
\c tournament;

-- Players table
CREATE TABLE players(
	player_id SERIAL PRIMARY KEY,
	player_name TEXT
);

-- Games table
CREATE TABLE matches(
	match_id SERIAL PRIMARY KEY,
	match_loser INT REFERENCES players(player_id),
	match_winner INT REFERENCES players(player_id)
);

CREATE View player_standings AS
	SELECT  players.player_id AS player_id, name, SUM(CASE WHEN players.player_id = matches.match_winner THEN 1 ELSE 0 END) AS win_count,
	COUNT(matches) AS match_count
	FROM players
	LEFT OUTER JOIN matches
	ON players.player_id = games.match_winner OR players.id = matches.match_loser
	GROUP BY player_id
	ORDER BY win_count DESC, match_count ASC;

create database narsi_cricket;
use narsi_cricket;
-- 1. Create a table named ‘matches’ with appropriate data types for columns
create table matches(
id int PRIMARY KEY,
city VARCHAR(38) NOT NULL,
_date DATE NOT NULL,
player_of_match VARCHAR(40) NOT NULL,
venue VARCHAR(60) NOT NULL,
neutral_venue int NOT NULL,
team1 VARCHAR(40) NOT NULL,
team2 VARCHAR(40) NOT NULL,
toss_winner VARCHAR(40) NOT NULL,
toss_decision VARCHAR(40) NOT NULL,
winner VARCHAR(40) NOT NULL,
result VARCHAR(20) NOT NULL,
result_margin int NOT NULL,
eliminator VARCHAR(10) NOT NULL,
method VARCHAR(10),
umpire1 VARCHAR(40) NOT NULL,
umpire2 VARCHAR(40) NOT NULL);
DESC matches;

-- 2. Create a table named ‘deliveries’ with appropriate data types for columns

create table deliveries(
id int,
inning int,
_over int,
ball int,
batsman VARCHAR(30),
non_striker VARCHAR(30),
bowler VARCHAR(30),
batsman_runs int,
extra_runs int,
total_runs int,
is_wicket int,
dismissal_kind VARCHAR(30),
player_dismissed VARCHAR(30),
fielder VARCHAR(30),
extras_type VARCHAR(30),
batting_team VARCHAR(30),
bowling_team VARCHAR(30));
desc deliveries;


-- 4. Import data from CSV file ’IPL_Ball.csv’ attached in resources to ‘deliveries’

SELECT * FROM deliveries;

-- 5. Select the top 20 rows of the deliveries table.

SELECT * FROM deliveries LIMIT 20;

-- 6. Select the top 20 rows of the matches table.

SELECT * FROM matches LIMIT 20;

-- 7. Fetch data of all the matches played on 2nd May 2013.

SELECT * FROM matches WHERE _date = '2013-05-2';

-- 8. Fetch data of all the matches where the margin of victory is more than 100 runs.

SELECT * FROM matches WHERE result_margin > 100;

-- 9. Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date.

SELECT * FROM matches WHERE result = 'tie' ORDER BY _date DESC;

-- 10. Get the count of cities that have hosted an IPL match.

SELECT count(DISTINCT city) FROM matches; 
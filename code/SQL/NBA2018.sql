-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "players" (
    "index" INT   NOT NULL,
    "player_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_players" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "teams" (
    "index" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "abbreviation" VARCHAR(3)   NOT NULL,
    "nickname" VARCHAR(100)   NOT NULL,
    "city" VARCHAR(100)   NOT NULL,
    "arena" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_teams" PRIMARY KEY (
        "team_id"
     )
);

CREATE TABLE "players_team" (
    "index" INT   NOT NULL,
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    "season" INT   NOT NULL,
    CONSTRAINT "pk_players_team" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "salary" (
    "index" INT   NOT NULL,
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    "salary" INT   NOT NULL,
    "season" INT   NOT NULL,
    CONSTRAINT "pk_salary" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "combine" (
    "index" INT   NOT NULL,
    "player_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    "year" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "draft_pick" REAL,
    "height_no_shoes" REAL,
    "height_with_shoes" REAL,
    "wingspan" REAL,
    "standing_reach" REAL,
    "vertical_max" REAL,
    "vertical_max_reach" REAL,
    "vertical_no_step" REAL,
    "vertical_no_step_reach" REAL,
    "weight" REAL ,
    "body_fat" REAL,
    "hand_length" REAL,
    "hand_width" REAL,
    "bench" REAL,
    "agility" REAL,
    "sprint" REAL,
    "season" INT,
    CONSTRAINT "pk_combine" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "games" (
    "game_id" INT   NOT NULL,
    "home_team_id" INT   NOT NULL,
    "visitor_team_id" INT   NOT NULL,
    "game_date_est" Date   NOT NULL,
    "season" REAL   NOT NULL,
    "pts_home" REAL   NOT NULL,
    "fg_pct_home" REAL   NOT NULL,
    "ft_pct_home" REAL   NOT NULL,
    "fg3_pct_home" REAL   NOT NULL,
    "ast_home" REAL   NOT NULL,
    "reb_home" REAL   NOT NULL,
    "pts_away" REAL   NOT NULL,
    "fg_pct_visitor" REAL   NOT NULL,
    "ft_pct_visitor" REAL   NOT NULL,
    "fg3_pct_visitor" REAL   NOT NULL,
    "ast_visitor" REAL   NOT NULL,
    "reb_visitor" REAL   NOT NULL,
    "home_team_wins" REAL   NOT NULL,
    CONSTRAINT "pk_games" PRIMARY KEY (
        "game_id"
     )
);

CREATE TABLE "stats" (
    "index" INT   NOT NULL,
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    "pos" VARCHAR(2)   NOT NULL,
    "age" INT   NOT NULL,
    "tm" VARCHAR(3)   NOT NULL,
    "g" REAL   NOT NULL,
    "gs" REAL   NOT NULL,
    "mp" REAL   NOT NULL,
    "fg" REAL   NOT NULL,
    "fga" REAL   NOT NULL,
    "fg%" REAL   NOT NULL,
    "3p" REAL   NOT NULL,
    "3pa" REAL   NOT NULL,
    "3p%" REAL   NOT NULL,
    "2p" REAL   NOT NULL,
    "2pa" REAL   NOT NULL,
    "2p%" REAL   NOT NULL,
    "efg%" REAL   NOT NULL,
    "ft" REAL   NOT NULL,
    "fta" REAL   NOT NULL,
    "ft%" REAL   NOT NULL,
    "pts" REAL   NOT NULL,
    "orb" REAL   NOT NULL,
    "drb" REAL   NOT NULL,
    "trb" REAL   NOT NULL,
    "ast" REAL   NOT NULL,
    "stl" REAL   NOT NULL,
    "blk" REAL   NOT NULL,
    "tov" REAL   NOT NULL,
    "pf" REAL   NOT NULL,
    "season" INT   NOT NULL,
    CONSTRAINT "pk_stats" PRIMARY KEY (
        "index"
     )
);

ALTER TABLE "players_team" ADD CONSTRAINT "fk_players_team_player_id" FOREIGN KEY("player_id")
REFERENCES "players" ("player_id");

ALTER TABLE "players_team" ADD CONSTRAINT "fk_players_team_team_id" FOREIGN KEY("team_id")
REFERENCES "teams" ("team_id");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_player_id" FOREIGN KEY("player_id")
REFERENCES "players" ("player_id");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_team_id" FOREIGN KEY("team_id")
REFERENCES "teams" ("team_id");

ALTER TABLE "combine" ADD CONSTRAINT "fk_combine_player_id" FOREIGN KEY("player_id")
REFERENCES "players" ("player_id");

ALTER TABLE "combine" ADD CONSTRAINT "fk_combine_team_id" FOREIGN KEY("team_id")
REFERENCES "teams" ("team_id");

ALTER TABLE "games" ADD CONSTRAINT "fk_games_home_team_id" FOREIGN KEY("home_team_id")
REFERENCES "teams" ("team_id");

ALTER TABLE "games" ADD CONSTRAINT "fk_games_visitor_team_id" FOREIGN KEY("visitor_team_id")
REFERENCES "teams" ("team_id");

ALTER TABLE "stats" ADD CONSTRAINT "fk_stats_player_id" FOREIGN KEY("player_id")
REFERENCES "players" ("player_id");

ALTER TABLE "stats" ADD CONSTRAINT "fk_stats_team_id" FOREIGN KEY("team_id")
REFERENCES "teams" ("team_id");


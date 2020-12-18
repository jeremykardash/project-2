-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "players" (
    "player_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_players" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "teams" (
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
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    "season" INT   NOT NULL,
    "player_team_id" SERIAL NOT NULL,
    CONSTRAINT "pk_players_team" PRIMARY KEY (
        "player_team_id"
     )
);

CREATE TABLE "salaries" (
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    "salary" INT   NOT NULL,
    "season" INT   NOT NULL,
    "salary_id" SERIAL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "salary_id"
     )
);

CREATE TABLE "combine" (
    "player_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    "year" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "draft_pick" INT   NOT NULL,
    "height_no_shoes" INT   NOT NULL,
    "height_with_shoes" INT   NOT NULL,
    "wingspan" INT   NOT NULL,
    "standing_reach" INT   NOT NULL,
    "vertical_max" INT   NOT NULL,
    "vertical_max_reach" INT   NOT NULL,
    "vertical_no_step" INT   NOT NULL,
    "vertical_no_step_reach" INT   NOT NULL,
    "weight" INT   NOT NULL,
    "body_fat" INT   NOT NULL,
    "hand_length" INT   NOT NULL,
    "hand_width" INT   NOT NULL,
    "bench" INT   NOT NULL,
    "agility" INT   NOT NULL,
    "sprint" INT   NOT NULL,
    "season" INT   NOT NULL,
     "combine_id" SERIAL   NOT NULL,
    CONSTRAINT "pk_combine" PRIMARY KEY (
        "combine_id"
     )
);

CREATE TABLE "games" (
    "game_id" INT   NOT NULL,
    "home_team_id" INT   NOT NULL,
    "visitor_team_id" INT   NOT NULL,
    "game_date_est" Date   NOT NULL,
    "season" INT   NOT NULL,
    "pts_home" INT   NOT NULL,
    "fg_pct_home" INT   NOT NULL,
    "ft_pct_home" INT   NOT NULL,
    "fg3_pct_home" INT   NOT NULL,
    "ast_home" INT   NOT NULL,
    "reb_home" INT   NOT NULL,
    "pts_away" INT   NOT NULL,
    "fg_pct_visitor" INT   NOT NULL,
    "ft_pct_visitor" INT   NOT NULL,
    "fg3_pct_visitor" INT   NOT NULL,
    "ast_visitor" INT   NOT NULL,
    "reb_visitor" INT   NOT NULL,
    "home_team_wins" INT   NOT NULL,
    CONSTRAINT "pk_games" PRIMARY KEY (
        "game_id"
     )
);

CREATE TABLE "stats" (
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "player_name" VARCHAR(100)   NOT NULL,
    "pos" VARCHAR(2)   NOT NULL,
    "age" INT   NOT NULL,
    "tm" VARCHAR(3)   NOT NULL,
    "g" INT   NOT NULL,
    "gs" INT   NOT NULL,
    "mp" INT   NOT NULL,
    "fg" INT   NOT NULL,
    "fga" INT   NOT NULL,
    "fg%" INT   NOT NULL,
    "3p" INT   NOT NULL,
    "3pa" INT   NOT NULL,
    "3p%" INT   NOT NULL,
    "2p" INT   NOT NULL,
    "2pa" INT   NOT NULL,
    "2p%" INT   NOT NULL,
    "efg%" INT   NOT NULL,
    "ft" INT   NOT NULL,
    "fta" INT   NOT NULL,
    "ft%" INT   NOT NULL,
    "pts" INT   NOT NULL,
    "orb" INT   NOT NULL,
    "drb" INT   NOT NULL,
    "trb" INT   NOT NULL,
    "ast" INT   NOT NULL,
    "stl" INT   NOT NULL,
    "blk" INT   NOT NULL,
    "tov" INT   NOT NULL,
    "pf" INT   NOT NULL,
    "season" INT   NOT NULL,
    "stat_id" SERIAL   NOT NULL,
    CONSTRAINT "pk_stats" PRIMARY KEY (
        "stat_id"
     )
);

ALTER TABLE "players_team" ADD CONSTRAINT "fk_players_team_player_id" FOREIGN KEY("player_id")
REFERENCES "players" ("player_id");

ALTER TABLE "players_team" ADD CONSTRAINT "fk_players_team_team_id" FOREIGN KEY("team_id")
REFERENCES "teams" ("team_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_player_id" FOREIGN KEY("player_id")
REFERENCES "players" ("player_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_team_id" FOREIGN KEY("team_id")
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


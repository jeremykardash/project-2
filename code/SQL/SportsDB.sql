-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Teams" (
    "TEAM_ID" INT   NOT NULL,
    "ABBREVIATION" VARCHAR   NOT NULL,
    "NICKNAME" VARCHAR   NOT NULL,
    "CITY" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Teams" PRIMARY KEY (
        "TEAM_ID"
     )
);


-- CREATE TABLE "Players" (
--     "PLAYER_ID" INT   NOT NULL,
--     "PLAYER_NAME" VARCHAR  NOT NULL,
--     "TEAM_ID" INT   NOT NULL,
--     "SEASON" INT   NOT NULL,
--     CONSTRAINT "pk_Players" PRIMARY KEY (
--         "PLAYER_ID"
--      )
-- );


-- CREATE TABLE "Games" (
--     "GAME_ID" INT   NOT NULL,
--     "GAME_DATE" Date   NOT NULL,
--     "HOME_TEAM_ID" INT   NOT NULL,
--     "VISITOR_TEAM_ID" INT   NOT NULL,
--     "SEASON" INT   NOT NULL,
--     "PTS_home" INT   NOT NULL,
--     "FG_FCT_home" INT   NOT NULL,
--     "FT_PCT_home" INT   NOT NULL,
--     "FG3_PCT_home" INT   NOT NULL,
--     "AST_home" INT   NOT NULL,
--     "REB_home" INT   NOT NULL,
--     "TEAM_ID_away" INT   NOT NULL,
--     "PTS_away" INT   NOT NULL,
--     "FG_PCT_away" INT   NOT NULL,
--     "FT_PCT_away" INT   NOT NULL,
--     "FG3_PCT_away" INT   NOT NULL,
--     "AST_away" INT   NOT NULL,
--     "REB_away" INT   NOT NULL,
--     "HOME_TEAM_WINS" INT   NOT NULL,
--     CONSTRAINT "pk_Games" PRIMARY KEY (
--         "GAME_ID"
--      )
-- );

-- CREATE TABLE "Player_Salary" (
--     "PLAYER_ID" INT   NOT NULL,
--     "PLAYER_NAME" VARCHAR   NOT NULL,
--     "SALARY" INT   NOT NULL,
--     CONSTRAINT "pk_Player_Salary" PRIMARY KEY (
--         "PLAYER_ID"
--      )
-- );

-- CREATE TABLE "Combine_Stats" (
--     "PLAYER_ID" INT   NOT NULL,
--     "PLAYER_NAME" VARCHAR   NOT NULL,
--     "DRAFT_PICK" INT   NOT NULL,
--     "HEIGHT(shoes)" INT   NOT NULL,
--     "HEIGHT(noshoes)" INT   NOT NULL,
--     "WINGSPAN" INT   NOT NULL,
--     "STANDING_REACH" INT   NOT NULL,
--     "VERTICAL(MAX)" INT   NOT NULL,
--     "WEIGHT" INT   NOT NULL,
--     "BODY_FAT" INT   NOT NULL,
--     "BENCH" INT   NOT NULL,
--     "AGILITY" INT   NOT NULL,
--     "SPRINT" INT   NOT NULL,
--     CONSTRAINT "pk_Combine_Stats" PRIMARY KEY (
--         "PLAYER_ID"
--      )
-- );

-- CREATE TABLE "Player_Stats" (
--     "PLAYER_ID" INT   NOT NULL,
--     "PLAYER" VARCHAR   NOT NULL,
--     "POSITION" VARCHAR   NOT NULL,
--     "AGE" INT   NOT NULL,
--     "ABBREVIATION" VARCHAR   NOT NULL,
--     "TEAM_ID" INT   NOT NULL,
--     "GAMES" INT   NOT NULL,
--     "GAMES_STARTED" INT   NOT NULL,
--     "MINUTES" INT   NOT NULL,
--     "FG" INT   NOT NULL,
--     "FGA" INT   NOT NULL,
--     "FG%" INT   NOT NULL,
--     "3P" INT   NOT NULL,
--     "3PA" INT   NOT NULL,
--     "3P%" INT   NOT NULL,
--     "2P" INT   NOT NULL,
--     "2PA" INT   NOT NULL,
--     "2P%" INT   NOT NULL,
--     "eFG%" INT   NOT NULL,
--     "FT" INT   NOT NULL,
--     "FTA" INT   NOT NULL,
--     "FT%" INT   NOT NULL,
--     "ORB" INT   NOT NULL,
--     "DRB" INT   NOT NULL,
--     "TRB" INT   NOT NULL,
--     "AST" INT   NOT NULL,
--     "STL" INT   NOT NULL,
--     "BLK" INT   NOT NULL,
--     "TOV" INT   NOT NULL,
--     "PF" INT   NOT NULL,
--     "PTS" INT   NOT NULL,
--     CONSTRAINT "pk_Player_Stats" PRIMARY KEY (
--         "PLAYER_ID"
--      )
-- );

-- ALTER TABLE "Players" ADD CONSTRAINT "fk_Players_PLAYER_ID" FOREIGN KEY("PLAYER_ID")
-- REFERENCES "Player_Salary" ("PLAYER_ID");

-- ALTER TABLE "Teams" ADD CONSTRAINT "fk_Teams_TEAM_ID" FOREIGN KEY("TEAM_ID")
-- REFERENCES "Players" ("TEAM_ID");

-- ALTER TABLE "Player_Stats" ADD CONSTRAINT "fk_Player_Stats_TEAM_ID" FOREIGN KEY("TEAM_ID")
-- REFERENCES "Teams" ("TEAM_ID");


DROP DATABASE quiz;  -- deletes database "quiz"

CREATE DATABASE quiz  -- creates database "quiz
CHARACTER SET utf8mb4  -- full UTF-8 support (including emojis and all Unicode characters)
COLLATE utf8mb4_polish_ci;  -- Polish-specific collation, case-insensitive (ci), sorts Polish letters properly

SHOW DATABASES;  -- shows current databases available in a project
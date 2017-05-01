-- create a table to store information about favorite_players

-- favorite_players resource
--   t.string :player_name
--   t.string :team_name
--   t.string :sport
--   t.string :position
--   t.integer :player_number

CREATE TABLE favorite_players(
  id SERIAL PRIMARY KEY,
  player_name TEXT,
  team_name TEXT,
  sport TEXT,
  position TEXT,
  player_number INTEGER,
  created_at timestamp,
  updated_at timestamp
);

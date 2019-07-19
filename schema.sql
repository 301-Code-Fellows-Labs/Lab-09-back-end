DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS weathers;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS yelp;

CREATE TABLE locations (
  id SERIAL PRIMARY KEY,
  search_query VARCHAR(255),
  formatted_query VARCHAR(255),
  latitude NUMERIC(10, 7),
  longitude NUMERIC(10, 7)
);

CREATE TABLE weathers (
  id SERIAL PRIMARY KEY,
  forecast VARCHAR(255),
  time VARCHAR(255),
  created_at BIGINT,
  location_id INTEGER NOT NULL,
  FOREIGN KEY (location_id) REFERENCES locations (id)
);
CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  link VARCHAR(255),
  name VARCHAR(255),
  event_date VARCHAR(255),
  summary VARCHAR(255),
  location_id INTEGER NOT NULL,
  FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE movies ( 
  id SERIAL PRIMARY KEY, 
  title VARCHAR(255),
  overview TEXT, 
  average_votes NUMERIC, 
  total_votes NUMERIC, 
  image_url VARCHAR(255),
  popularity NUMERIC,
  released_on  VARCHAR(255), 
  location_id INTEGER NOT NULL,
  FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE yelp (
   id SERIAL PRIMARY KEY,
   name VARCHAR(255),
   url VARCHAR(255),
   image_url VARCHAR(255),
   rating NUMERIC,
   price VARCHAR(255),
   location_id INTEGER NOT NULL,
   FOREIGN KEY (location_id) REFERENCES locations (id)
 );
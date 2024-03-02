CREATE TABLE nation (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL
);

CREATE TABLE trip (
  id INT AUTO_INCREMENT PRIMARY KEY,
  places INT NOT NULL
);

CREATE TABLE itinerary_stop (
  trip_id INT,
  nation_id INT,
  PRIMARY KEY (trip_id, nation_id),
  FOREIGN KEY (trip_id) REFERENCES trip(id) ON DELETE CASCADE,
  FOREIGN KEY (nation_id) REFERENCES nation(id) ON DELETE CASCADE
);
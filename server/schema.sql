CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  username varchar(255) unique,
  PRIMARY KEY (id)
);

CREATE TABLE rooms (
  id int NOT NULL AUTO_INCREMENT,
  roomname varchar(255) unique,
  PRIMARY KEY (id)
);

CREATE TABLE messages (
  id int NOT NULL AUTO_INCREMENT,
  message varchar(255),
  user_name varchar(255),
  room_name varchar(255),
  created_at Timestamp,
  PRIMARY KEY (id),
  FOREIGN KEY (user_name) REFERENCES users(username),
  FOREIGN KEY (room_name) REFERENCES rooms(roomname)
);
 -- FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)

-- CONSTRAINT fk_customer FOREIGN KEY (customer_id)

/* Create other tables and define schemas for them here! */
--
-- CREATE TABLE customer (
--   id INT NOT NULL AUTO_INCREMENT,
--   firstname varchar(50) NOT NULL,
--   lastname varchar(50) NOT NULL,
--   PRIMARY KEY (id)
-- ) ENGINE=INNODB;
--
-- CREATE TABLE contact (
--   id INT,
--   customer_id INT,
--   info varchar(50) NOT NULL,
--   type varchar(50) NOT NULL,
--   INDEX par_ind (customer_id),
--   CONSTRAINT fk_customer FOREIGN KEY (customer_id)
--   REFERENCES customer(id)
--   ON DELETE CASCADE
--   ON UPDATE CASCADE
-- ) ENGINE=INNODB;

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

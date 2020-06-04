CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /*
  user_id column - foreign key of users.id
  chat_id (text) - not null
  chat_text (text, size: 255, default: null)
  time (type: timestamp, not null)
  room_id - foriegn key of rooms.id
  */
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(id),
  chat_id VARCHAR,
  chat_text VARCHAR(1000) NULL,
  msg_time VARCHAR,
  room_id INT,
  FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

/* Create other tables and define schemas for them here! */
CREATE TABLE users (
  /*
  id (integer, auto increment) - primary key
  name (varchar 20, size 100)
  */
  id INT AUTO_INCREMENT,
  PRIMARY KEY (id),
  user_name VARCHAR(20)
);

CREATE TABLE friends (
  /*
  user1_id (integer) - foreign key of names.id
  user2_id (integer) - foreign key of names.id
  */
  user1_id INT,
  user2_id INT,
  FOREIGN KEY (user1_id) REFERENCES users(id),
  FOREIGN KEY (user2_id) REFERENCES users(id)
);

CREATE TABLE rooms (
  /*
  room_id (integer, auto increment) - Primary key
  room_name (varchar 20)
  */
  room_id INT AUTO_INCREMENT,
  PRIMARY KEY (room_id),
  room_name VARCHAR(20)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

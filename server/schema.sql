DROP DATABASE IF EXISTS chat;
CREATE DATABASE chat;

USE chat;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  /*
  id (integer, auto increment) - primary key
  name (varchar 20, size 100)
  */
  id INT AUTO_INCREMENT,
  user_name VARCHAR(20),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS friends;
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

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  /*
  user_id column - foreign key of users.id
  chat_id (text) - not null
  chat_text (text, size: 255, default: null)
  time (type: timestamp, not null)
  room_id - foriegn key of rooms.id
  */
  user_id INT,
  chat_id VARCHAR(20),
  chat_text VARCHAR(1000) NULL,
  msg_time VARCHAR(20),
  roomname VARCHAR(20),
  FOREIGN KEY (user_id) REFERENCES users(id)
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

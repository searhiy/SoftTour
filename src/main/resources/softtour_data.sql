USE softtour;

SET NAMES 'utf8';
SET NAMES utf8;
SET NAMES utf8 COLLATE utf8_general_ci;
SET CHARACTER SET utf8;

INSERT INTO role VALUES
  (1, 'ROLE_ADMIN'),
  (2, 'ROLE_ANONYMOUS'),
  (3, 'ROLE_USER');

INSERT INTO user VALUES
  (1, 'Ronaldo', 'cristiano@gmail.com', 'c519e76f6719da3d089433d16ec68662b80087361af1253b0f1ca12fa4da9781', '1985-05-02', 'MALE', '+380506007733', 3, true),
  (2, 'Messi', 'lionel@gmail.com', '7b443e7a5d6f7b0b3b700b540cd46338be7808dfc815acf83a9e80111c4bdd97', '1987-06-24', 'MALE', '+380994455666', 3, true),
  (3, 'Masha', 'kisa@gmail.com', '7b443e7a5d6f7b0b3b700b540cd46338be7808dfc815acf83a9e80111c4bdd97', '1987-06-24', 'FEMALE', '+380994455666', 3, true),
  (4, 'Admin', 'admin@gmail.com', '7b443e7a5d6f7b0b3b700b540cd46338be7808dfc815acf83a9e80111c4bdd97', '1987-06-24', 'MALE', '+380994455666', 1, true);






INSERT INTO feedback VALUES
  (1, 4, 3, 4, 5, 'Not bed', 2, 2),
  (2, 5, 4, 5, 4, 'NULL', 3, 1),
  (3, 5, 4, 5, 4, 'bla bla bla bla bla bla bla bla ', 14, 2),
  (4, 5, 4, 5, 4, 'fgdgjdg ', 14, 3),
  (5, 5, 4, 5, 4, 'SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM SPAM', 14, 2);



INSERT INTO historyrequest VALUES
  (1, '2014-09-08', '2014-09-11', 6, 14, '5', 1, 0, 200.00, 550.00, 'Львів', 1, 7, '2014-09-04'),
  (2, '2014-09-09', '2014-09-14', 7, 16, '4,5', 1, 0, 150.00, 400.00, 'Київ', 2, 8, '2014-09-04');
----------------------------------------------------------------------------------------------------
--
-- Create structure for all table
--
----------------------------------------------------------------------------------------------------
--
-- Table structure for table 'users'
-- Table structure for table 'feedback'
-- Table structure for table 'user_info'
-- Table structure for table 'user_post'
-- Table structure for table 'user_post_comment'
-- Table structure for table 'user_lock'
-- Table structure for table 'user_name_pass'
-- Table structure for table 'is_admin'
--
--
----------------------------------------------------------------------------------------------------
--
-- Dumping all data
--
----------------------------------------------------------------------------------------------------
--
-- Dumping data for table 'users'
-- Dumping data for table 'feedback'
-- Dumping data for table 'user_info'
-- Dumping data for table 'user_post'
-- Dumping data for table 'user_post_commen
-- Dumping data for table 'user_lock'
-- Dumping data for table 'user_name_pass'
-- Dumping data for table 'is_admin'
--
CREATE TABLE users (
  user_id			NUMBER(7) 	NOT NULL CONSTRAINT user_id_us PRIMARY KEY ,
  Name 				varchar(25) NOT NULL,
  Email				varchar(30) NOT NULL,
  Passwd			varchar(30) NOT NULL,
  Gender 			varchar(6) 	NOT NULL,
  Birthday_Date 	varchar(11) NOT NULL,
  FB_Join_Date 		varchar(30) NOT NULL
);

INSERT INTO users (user_id, Name, Email, Passwd, Gender, Birthday_Date, FB_Join_Date) VALUES
(1, 'Alicja Burner', 'alic.ad1i4@yahoo.com', 'myfaceback', 'Female', to_date('14-01-1994', 'dd-mm-yyyy'), to_date('18-09-2013', 'dd-mm-yyyy'));
INSERT INTO users (user_id, Name, Email, Passwd, Gender, Birthday_Date, FB_Join_Date) VALUES
(2, 'Tomasz Romus', 'tom45@gmai.com', 'myfaceback', 'Male', to_date('17-05-1998', 'dd-mm-yyyy'), to_date('18-09-2013', 'dd-mm-yyyy'));
INSERT INTO users (user_id, Name, Email, Passwd, Gender, Birthday_Date, FB_Join_Date) VALUES
(3, 'Roksana Skala', 'roxi4@o2.pl', 'myfaceback', 'Female', to_date('13-05-1994', 'dd-mm-yyyy'), to_date('04-09-2014', 'dd-mm-yyyy'));
INSERT INTO users (user_id, Name, Email, Passwd, Gender, Birthday_Date, FB_Join_Date) VALUES
(4, 'Roman Karas', 'romankaras4@wp.pl', 'myfaceback', 'Male', to_date('10-02-1999', 'dd-mm-yyyy'), to_date('18-10-2012', 'dd-mm-yyyy'));
INSERT INTO users (user_id, Name, Email, Passwd, Gender, Birthday_Date, FB_Join_Date) VALUES
(5, 'Sara Milosz', 'saraxxa2@gmail.com', 'myfaceback', 'Female', to_date('09-03-1998', 'dd-mm-yyyy'), to_date('18-9-2014', 'dd-mm-yyyy'));
INSERT INTO users (user_id, Name, Email, Passwd, Gender, Birthday_Date, FB_Join_Date) VALUES
(6, 'Aleksandra Lipa', 'olalipa23@gmail.com', 'myfaceback', 'Female', to_date('17-11-2000', 'dd-mm-yyyy'), to_date('18-09-2011', 'dd-mm-yyyy'));
INSERT INTO users (user_id, Name, Email, Passwd, Gender, Birthday_Date, FB_Join_Date) VALUES
(7, 'Agnieszka Delima',	'agnieszka243@wp.pl', 'myfaceback', 'Female', to_date('16-12-2001', 'dd-mm-yyyy'), to_date('31-08-2010', 'dd-mm-yyyy'));
INSERT INTO users (user_id, Name, Email, Passwd, Gender, Birthday_Date, FB_Join_Date) VALUES
(8, 'Krystian Tomaszek', 'krystek@gmail.com', 'myfaceback', 'Male', to_date('12-12-1995', 'dd-mm-yyyy'), to_date('18-9-2009', 'dd-mm-yyyy'));
INSERT INTO users (user_id, Name, Email, Passwd, Gender, Birthday_Date, FB_Join_Date) VALUES
(9, 'Antoni Marek', 'antekk21@gmail.com', 'myfaceback', 'Male', to_date('16-11-1995', 'dd-mm-yyyy'), to_date('18-03-2008', 'dd-mm-yyyy'));

CREATE TABLE feedback (
  feedback_id   NUMBER(7)     NOT NULL CONSTRAINT feedback_id_fe  PRIMARY KEY,
  user_id       NUMBER(7)     NOT NULL CONSTRAINT user_id_fe      REFERENCES users(user_id),
  feedback_txt  varchar(120)  NOT NULL,
  star          varchar(1)    NOT NULL,
  Date_info     varchar(30)   NOT NULL
);

INSERT INTO feedback (feedback_id, user_id, feedback_txt, star, Date_info) VALUES
(1, 2, 'Thx', '2', '29-10-2013 9:22');
INSERT INTO feedback (feedback_id, user_id, feedback_txt, star, Date_info) VALUES
(2, 3, 'What are U doing', '3', '1-8-2014 13:30');
INSERT INTO feedback (feedback_id, user_id, feedback_txt, star, Date_info) VALUES
(3, 4, 'Nice day', '1', '12-3-2012	14:08');
INSERT INTO feedback (feedback_id, user_id, feedback_txt, star, Date_info) VALUES
(4, 5, 'Good week', '4', '18-1-2014 16:59');
INSERT INTO feedback (feedback_id, user_id, feedback_txt, star, Date_info) VALUES
(5, 6, 'Hi', '7', '2-10-2013 14:18');
INSERT INTO feedback (feedback_id, user_id, feedback_txt, star, Date_info) VALUES
(6, 7, 'Hello', '5', '30-9-2013 11:34');
INSERT INTO feedback (feedback_id, user_id, feedback_txt, star, Date_info) VALUES
(7, 8, 'Hello', '6', '30-9-2013 11:34');
INSERT INTO feedback (feedback_id, user_id, feedback_txt, star, Date_info) VALUES
(8, 9, 'I am fine', '1', '12-12-2011	17:08');
INSERT INTO feedback (feedback_id, user_id, feedback_txt, star, Date_info) VALUES
(10, 1, 'Good book', '4', '20-12-2015 16:59');

CREATE TABLE user_info (
  user_id		NUMBER(7)	    NOT NULL CONSTRAINT user_id_us_in REFERENCES users(user_id),
  job			varchar(100),
  current_city 	varchar(100) 	NOT NULL,
  hometown 		varchar(100) 	NOT NULL,
  website 		varchar(100),
  Facebook_ID 	VARCHAR(100) 	NOT NULL
);

INSERT INTO user_info (user_id, job, current_city, hometown, website, Facebook_ID) VALUES
(1, '', 'Krakow', 'Krakow', 'www.google.com/aamit', 'www.facebook.com/xxz2.000002');
INSERT INTO user_info (user_id, job, current_city, hometown, website, Facebook_ID) VALUES
(2, '', 'Warszawa', 'Krakow', '', 'www.facebook.com/43223.000002');
INSERT INTO user_info (user_id, job, current_city, hometown, website, Facebook_ID) VALUES
(3, '', 'Zamosc', 'Zamosc', 'www.wp.pl/t123', 'www.facebook.com/das3.000002');
INSERT INTO user_info (user_id, job, current_city, hometown, website, Facebook_ID) VALUES
(4, '', 'Skrzyszow', 'Skrzyszow', 'www.google.com/matra', 'www.facebook.com/matr.000002');
INSERT INTO user_info (user_id, job, current_city, hometown, website, Facebook_ID) VALUES
(5, '', 'Warszawa', 'Krakow', '', 'www.facebook.com/tyfuyh.000002');
INSERT INTO user_info (user_id, job, current_city, hometown, website, Facebook_ID) VALUES
(6, '', 'Oswiecim', 'Krakow', '', 'www.facebook.com/dasdas3.000002');
INSERT INTO user_info (user_id, job, current_city, hometown, website, Facebook_ID) VALUES
(7, '', 'Rzeszow', 'Warszawa', 'www.google.com/matsda', 'www.facebook.com/matr.000002');
INSERT INTO user_info (user_id, job, current_city, hometown, website, Facebook_ID) VALUES
(8, '', 'Rzeszow', 'Krakow', '', 'www.facebook.com/tyfuyh.000034');
INSERT INTO user_info (user_id, job, current_city, hometown, website, Facebook_ID) VALUES
(9, '', 'Krakow', 'Rzeszow', '', 'www.facebook.com/dasdas3.0006543');

CREATE TABLE user_post (
  post_id NUMBER(7) 		NOT NULL CONSTRAINT post_id_us    PRIMARY KEY,
  user_id NUMBER(7) 		NOT NULL CONSTRAINT user_id_us_po REFERENCES users(user_id),
  post_txt VARCHAR(250) 	NOT NULL,
  post_time varchar(30) 	NOT NULL
);

INSERT INTO user_post (post_id, user_id, post_txt, post_time) VALUES
(1, 1, 'Join Faceback', '18-9-2013 22:10');
INSERT INTO user_post (post_id, user_id, post_txt, post_time) VALUES
(2, 2, 'Hi!', '18-10-2010 14:16');
INSERT INTO user_post (post_id, user_id, post_txt, post_time) VALUES
(3, 3, 'Welcome!', '18-10-2006 12:10');

CREATE TABLE user_post_comment (
  comment_id    NUMBER(7)		NOT NULL CONSTRAINT comment_id_us    PRIMARY KEY,
  post_id       NUMBER(7)		NOT NULL CONSTRAINT post_id_us_po_co  REFERENCES user_post(post_id),
  user_id       NUMBER(7)		NOT NULL CONSTRAINT user_id_us_po_co  REFERENCES users(user_id),
  comment_text  VARCHAR(250)	NOT NULL
);

INSERT INTO user_post_comment (comment_id, post_id, user_id, comment_text) VALUES
(1, 1, 1, 'Nice one!');
INSERT INTO user_post_comment (comment_id, post_id, user_id, comment_text) VALUES
(2, 2, 2, 'Very good!');
INSERT INTO user_post_comment (comment_id, post_id, user_id, comment_text) VALUES
(3, 3, 3, 'That is right');

CREATE TABLE user_lock (
  user_id   NUMBER(7) 	NOT NULL CONSTRAINT user_id_us_lo REFERENCES users(user_id),
  user_ban  NUMBER(1,0) NOT NULL
);

INSERT INTO user_lock (user_id, user_ban) VALUES
(1, 1);

CREATE TABLE user_name_pass (
	user_id 	NUMBER(7) 	NOT NULL CONSTRAINT user_id_us_na_pa REFERENCES users(user_id),
	Username 	varchar(20) NOT NULL,
	Passwd   	varchar(30) NOT NULL
);

INSERT INTO user_name_pass (user_id, Username, Passwd) VALUES
(1, 'ala213zkotem', 'kotel123');
INSERT INTO user_name_pass (user_id, Username, Passwd) VALUES
(2, 'gwiazda132', 'gwiazda2143E');
INSERT INTO user_name_pass (user_id, Username, Passwd) VALUES
(3, 'elkasa21', 'asern3n3');
INSERT INTO user_name_pass (user_id, Username, Passwd) VALUES
(4, 'alek211', 'someDaPass');
INSERT INTO user_name_pass (user_id, Username, Passwd) VALUES
(5, 'arek', 'panda12');
INSERT INTO user_name_pass (user_id, Username, Passwd) VALUES
(6, 'sniezka', 'frytkizketchupem');
INSERT INTO user_name_pass (user_id, Username, Passwd) VALUES
(7, 'martiz', 'binissi');
INSERT INTO user_name_pass (user_id, Username, Passwd) VALUES
(8, 'kasiewicz', 'asterix33');
INSERT INTO user_name_pass (user_id, Username, Passwd) VALUES
(9, 'wentek', 'someInfoPasswd');

CREATE TABLE is_admin (
  user_id 	NUMBER(7)   	NOT NULL CONSTRAINT user_id_us_admin REFERENCES users(user_id),
  is_admin   NUMBER(1,0) 	NOT NULL
);

INSERT INTO is_admin (user_id, is_admin) VALUES
(1, 0);
INSERT INTO is_admin (user_id, is_admin) VALUES
(2, 1);
INSERT INTO is_admin (user_id, is_admin) VALUES
(3, 1);
INSERT INTO is_admin (user_id, is_admin) VALUES
(4, 0);
INSERT INTO is_admin (user_id, is_admin) VALUES
(5, 1);
INSERT INTO is_admin (user_id, is_admin) VALUES
(6, 1);
INSERT INTO is_admin (user_id, is_admin) VALUES
(7, 1);


------------------------------------------------------------------------------------------------------
--
-- Drop all tables
--
------------------------------------------------------------------------------------------------------
--
-- Drop table 'users'
-- Drop table 'feedback'
-- Drop table 'user_info'
-- Drop table 'user_post'
-- Drop table 'user_post_commen
-- Drop table 'user_lock'
-- Drop table 'user_name_pass'
-- Drop table 'is_admin'
--
DROP TABLE USER_INFO;
DROP TABLE is_admin;
DROP TABLE FEEDBACK;
DROP TABLE USER_LOCK;
DROP TABLE USER_NAME_PASS;
DROP TABLE USER_POST_COMMENT;
DROP TABLE USER_POST;
DROP TABLE USERS;
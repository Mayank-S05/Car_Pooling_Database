
CREATE TABLE Security_Question
(
  Q_ID INT(4) NOT NULL,
  Question varchar(100) NOT NULL,
  PRIMARY KEY (Q_ID)
);
select *from Security_Question ;

CREATE TABLE users
(
  E_Mail varchar(100) NOT NULL,
  Passwords INT(20) NOT NULL,
  Name_users varchar(30) NOT NULL,
  Q_ID INT(4) NOT NULL,
  PRIMARY KEY (E_Mail),
  FOREIGN KEY (Q_ID) REFERENCES Security_Question(Q_ID)
);
select *from users ;

CREATE TABLE Traveller
(

  SourceD varchar(100) NOT NULL,
  Destination varchar(100) NOT NULL,
  Dept_Time varchar(10) NOT NULL,
  Nos_of_Passengers INT(20) NOT NULL,
  dateof date  NOT NULL ,
  T_ID INT(4) NOT NULL,
  T_E_Mail VARCHAR(20) not null REFERENCES Users(E_Mail),
  PRIMARY KEY (T_ID)
);
select *from Traveller ;

CREATE TABLE owners
(
  Company_Name varchar(100),
  O_ID INT(5) NOT NULL,
  O_E_Mail VARCHAR(20) not null REFERENCES Users(E_Mail),
  PRIMARY KEY (O_ID)
);
select *from owners ;


CREATE TABLE Auto_Service
(
  A_ID INT(20) NOT NULL,
  Music_Choice varchar(100) NOT NULL,
  Plate_Nos varchar(20) NOT NULL,
  Charges INT(10) NOT NULL,
  timeof1 varchar(10)  NOT NULL,
  dateof1 date NOT NULL,
  A_O_ID VARCHAR(20) not null REFERENCES Users(O_ID),
  PRIMARY KEY (A_ID)
);
select *from Auto_Service ;

CREATE TABLE Car_Details
(
  Plate_Nos varchar(20) NOT NULL,
  Color varchar(10) NOT NULL,
  AC_NonAC varchar(20) NOT NULL,
  Model varchar(20) NOT NULL,
  Capacity INT(20) NOT NULL,
  PRIMARY KEY (Plate_Nos),
  C_S_ID VARCHAR(20) not null REFERENCES Car_Service(Service_id)
);
select *from Car_Details ;

CREATE TABLE Preferences
(
  Music varchar(20) NOT NULL,
  Smoking varchar(20) NOT NULL,
  Gossip varchar(20) NOT NULL,
  Gender varchar(10) NOT NULL,
  P_S_ID VARCHAR(20) not null REFERENCES Car_Service(Service_id)
);
select * from Preferences;


CREATE TABLE Route
(
  R_ID varchar(20) NOT NULL,
  SourceD varchar(100) NOT NULL,
  Mile_Stones varchar(100) NOT NULL,
  OneWay_TwoWay varchar(10) ,
  Capacity INT(20) NOT NULL,
  Destination varchar(100) NOT NULL,
  R_A_ID VARCHAR(20) not null REFERENCES Auto_Service(A_ID),
  S_S_ID VARCHAR(20) not null REFERENCES Car_Service(Service_id),
  PRIMARY KEY(R_ID)
);
select * from Route;
 
 CREATE TABLE Car_Service
(
  timeof2 varchar(50) NOT NULL,
  dateof2 Date  NOT NULL,
  Service_id INT(10) NOT NULL,
  Charges INT(10) NOT NULL,
  PRIMARY KEY (Service_id),
  C_O_ID VARCHAR(20) not null REFERENCES Users(O_ID),
  C_T_ID VARCHAR(20) not null REFERENCES Traveller(T_ID)
);
select *from Car_Service ;



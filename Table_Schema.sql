
CREATE TABLE Security_Question
(
  Q_ID INT NOT NULL,
  Question INT NOT NULL,
  PRIMARY KEY (Q_ID)
);

CREATE TABLE User
(
  E_Mail INT NOT NULL,
  Password INT NOT NULL,
  Name INT NOT NULL,
  Q_ID INT NOT NULL,
  PRIMARY KEY (E_Mail),
  FOREIGN KEY (Q_ID) REFERENCES Security_Question(Q_ID)
);

CREATE TABLE Traveller
(
  Source INT NOT NULL,
  Destination INT NOT NULL,
  Dept_Time INT NOT NULL,
  Nos_of_Passengers INT NOT NULL,
  date INT NOT NULL,
  T_ID INT NOT NULL,
  E_Mail INT NOT NULL,
  PRIMARY KEY (T_ID),
  FOREIGN KEY (E_Mail) REFERENCES User(E_Mail)
);

CREATE TABLE Owner
(
  Company_Name INT,
  O_ID INT NOT NULL,
  E_Mail INT NOT NULL,
  PRIMARY KEY (O_ID),
  FOREIGN KEY (E_Mail) REFERENCES User(E_Mail)
);

CREATE TABLE Auto_Service
(
  Music_Choice INT NOT NULL,
  Plate_Nos INT NOT NULL,
  Charges INT NOT NULL,
  Date INT NOT NULL,
  A_ID INT NOT NULL,
  Time INT NOT NULL,
  O_ID INT NOT NULL,
  PRIMARY KEY (A_ID),
  FOREIGN KEY (O_ID) REFERENCES Owner(O_ID)
);

CREATE TABLE Car_Service
(
  Date INT NOT NULL,
  Time INT NOT NULL,
  Service_id INT NOT NULL,
  Charges INT NOT NULL,
  O_ID INT NOT NULL,
  PRIMARY KEY (Service_id),
  FOREIGN KEY (O_ID) REFERENCES Owner(O_ID)
);

CREATE TABLE Preferences
(
  Music INT NOT NULL,
  Smoking INT NOT NULL,
  Gossip INT NOT NULL,
  Gender INT NOT NULL,
  Service_id INT NOT NULL,
  FOREIGN KEY (Service_id) REFERENCES Car_Service(Service_id)
);

CREATE TABLE Route
(
  Source INT NOT NULL,
  Mile_Stones INT NOT NULL,
  OneWay_TwoWay INT,
  Capacity INT NOT NULL,
  Destination INT NOT NULL,
  A_ID INT NOT NULL,
  Service_id INT NOT NULL,
  FOREIGN KEY (A_ID) REFERENCES Auto_Service(A_ID),
  FOREIGN KEY (Service_id) REFERENCES Car_Service(Service_id)
);

CREATE TABLE Car_Details
(
  Plate_Nos INT NOT NULL,
  Color INT NOT NULL,
  AC_NonAC INT NOT NULL,
  Model INT NOT NULL,
  Capacity INT NOT NULL,
  Service_id INT NOT NULL,
  PRIMARY KEY (Plate_Nos),
  FOREIGN KEY (Service_id) REFERENCES Car_Service(Service_id)
);
select *from Car_Details ;
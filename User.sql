/*All User's gets stored in APP_USER table*/
create table APP_USER (
   id BIGINT NOT NULL AUTO_INCREMENT,
   sso_id VARCHAR(30) NOT NULL,
   password VARCHAR(100) NOT NULL,
   first_name VARCHAR(30) NOT NULL,
   last_name  VARCHAR(30) NOT NULL,
   email VARCHAR(30) NOT NULL,
   state VARCHAR(30) NOT NULL,   
   phone FLOAT,
   userPhoto longblob ,
   UNIQUE (sso_id),
   PRIMARY KEY (id) 
);
  
/* USER_PROFILE table contains all possible roles */ 
create table USER_PROFILE(
   id BIGINT NOT NULL AUTO_INCREMENT,
   type VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (type)
);
  
/* JOIN TABLE for MANY-TO-MANY relationship*/  
CREATE TABLE APP_USER_USER_PROFILE (
    user_id BIGINT NOT NULL,
    user_profile_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, user_profile_id),
    CONSTRAINT FK_APP_USER FOREIGN KEY (user_id) REFERENCES APP_USER (id),
    CONSTRAINT FK_USER_PROFILE FOREIGN KEY (user_profile_id) REFERENCES USER_PROFILE (id)
);

create table USER_DOCUMENT(
   id BIGINT NOT NULL AUTO_INCREMENT,
   user_id BIGINT NOT NULL,
   name  VARCHAR(100) NOT NULL,
   description VARCHAR(255) ,
   type VARCHAR(100) NOT NULL,
   content longblob NOT NULL,
   PRIMARY KEY (id),
   CONSTRAINT document_user FOREIGN KEY (user_id) REFERENCES APP_USER (id) ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE USER_MENUGRP (
    user_id BIGINT NOT NULL,
    MenuGrp_ID INT(11)  NOT NULL, 
    PRIMARY KEY (user_id, MenuGrp_ID),
    CONSTRAINT FK_APP_USER_MenuGrp FOREIGN KEY (user_id) REFERENCES APP_USER (id),    
    CONSTRAINT FK_MenuGrp FOREIGN KEY (MenuGrp_ID) REFERENCES MenuGrp (MenuGrp_ID) 
);

 
/* Populate USER_PROFILE Table */
INSERT INTO USER_PROFILE(type)
VALUES ('USER');
 
INSERT INTO USER_PROFILE(type)
VALUES ('ADMIN');
 
INSERT INTO USER_PROFILE(type)
VALUES ('DBA');
 
 
/* Populate one Admin User which will further create other users for the application using GUI */
INSERT INTO APP_USER(sso_id, password, first_name, last_name, email, state,MenuGrp_ID)
VALUES ('aaa','aaa', 'Sam','Smith','samy@xyz.com', 'Active',3);
 
 
/* Populate JOIN Table */
INSERT INTO APP_USER_USER_PROFILE (user_id, user_profile_id)
  SELECT user.id, profile.id FROM app_user user, user_profile profile
  where user.sso_id='kannan' and profile.type='ADMIN';
  
  commit;
  ====
   
 
/* Populate USER_PROFILE Table */
INSERT INTO USER_PROFILE(type) VALUES ('ADMIN');
INSERT INTO USER_PROFILE(type) VALUES ('DBA');
INSERT INTO USER_PROFILE(type) VALUES ('ACCOUNT');
INSERT INTO USER_PROFILE(type) VALUES ('TEACHING');
INSERT INTO USER_PROFILE(type) VALUES ('NONTEACHING');
INSERT INTO USER_PROFILE(type) VALUES ('LIBRARY');
INSERT INTO USER_PROFILE(type) VALUES ('STUDENT');
INSERT INTO USER_PROFILE(type) VALUES ('PARENT');
INSERT INTO USER_PROFILE(type) VALUES ('USER');

/* Populate one Admin User which will further create other users for the application using GUI */
INSERT INTO APP_USER(sso_id, password, first_name, last_name, email, state)
VALUES ('admin','admin', 'Sam','Smith','samy@xyz.com', 'Active');

INSERT INTO APP_USER(sso_id, password, first_name, last_name, email, state)
VALUES ('kannan','kannan', 'kannan','kannan','samy@xyz.com', 'Active');

INSERT INTO APP_USER(sso_id, password, first_name, last_name, email, state)
VALUES ('dba','dba', 'aaa','aaa','samy@xyz.com', 'Active');
 
 
 create table Active_Log ( 
   userId VARCHAR(30) NOT NULL,
   ipaddress VARCHAR(30) NOT NULL,
   first_name timestamp NOT NULL,
   last_name  timestamp ,
   duration timestamp 
);
  
create table Leave_Mgmt ( 
Leave_Id INT(11) NOT NULL AUTO_INCREMENT,
Emp_id INT(11)  NOT NULL,
LeaveType_Id INT(11)  NOT NULL,
LeaveDate timestamp NOT NULL,
Reason  VARCHAR(50) NOT NULL,
AppliedOn timestamp NOT NULL,
Status VARCHAR(1) NOT NULL,
PRIMARY KEY (Leave_Id),
CONSTRAINT FK_EMP_LEAVE FOREIGN KEY (Emp_id) REFERENCES EMPLOYEE (Emp_id),
CONSTRAINT FK_LEAVE_TYPE FOREIGN KEY (LeaveType_Id) REFERENCES Leave_Type (LeaveType_Id)
);

create table Leave_Type (
LeaveType_Id INT(11) NOT NULL AUTO_INCREMENT,
LeaveType VARCHAR(30) NOT NULL,
noofLeaves INT(2)  NOT NULL,
PRIMARY KEY (LeaveType_Id)
)
 
 create table Award_Mgmt ( 
Award_Id INT(11) NOT NULL AUTO_INCREMENT,
AwardName   VARCHAR(50) NOT NULL,
GiftItem  VARCHAR(50) NOT NULL,
CashPrice  FLOAT,
Emp_id  INT(11) NOT NULL,
Month  timestamp NOT NULL,
Year  timestamp NOT NULL,
PRIMARY KEY (Award_Id),
CONSTRAINT FK_EMP_AWARD FOREIGN KEY (Emp_id) REFERENCES EMPLOYEE (Emp_id)
)

create table EMPLOYEE ( 
Emp_Id INT(11) NOT NULL AUTO_INCREMENT,
First_name VARCHAR(30) NOT NULL,
Last_name  VARCHAR(30) NOT NULL,
Email VARCHAR(30) NOT NULL, 
Phone FLOAT NOT NULL,
PRIMARY KEY (Emp_Id) 
)

CREATE TABLE org_logo (
    id BIGINT NOT NULL AUTO_INCREMENT,
    active CHAR(1),
    content LONGBLOB NOT NULL,
    PRIMARY KEY (id)
)
 
 
commit;
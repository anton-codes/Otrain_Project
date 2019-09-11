-- Otrain-DDL.sql 
-- Authors: Hrytsyk Anton, Andrew LeBlanc 
-- November 17 2018
-- Last modified on November 17 2018, headers and footers were added
-- 17 nov 2018, pg version

DROP TABLE IF EXISTS Timetable_T; -- Child
DROP TABLE IF EXISTS Train_T; -- Child
DROP TABLE IF EXISTS Route_Stop_T; -- Child
DROP TABLE IF EXISTS Driver_T; -- Parent
DROP TABLE IF EXISTS Route_T; -- Parent
DROP TABLE IF EXISTS Stop_T; -- Parent

CREATE TABLE Driver_T (
Driv_ID CHAR ( 4 ) NOT NULL,
Driv_Fname VARCHAR ( 30 ) NULL,
Driv_Lname VARCHAR ( 30 ) NOT NULL,
CONSTRAINt PK_Driver_T PRIMARY KEY ( Driv_ID )
);

CREATE TABLE Route_T (
Route_ID CHAR ( 3 ) NOT NULL,
Route_Stops INT DEFAULT NULL,
Route_Timetable CHAR ( 2 ) NOT NULL,
CONSTRAINT PK_Route_T PRIMARY KEY ( Route_ID )
);

CREATE TABLE Stop_T (
Stop_ID CHAR ( 5 ) NOT NULL,
Stop_Loc CHAR ( 5 ),
Stop_number INT NOT NULL,
CONSTRAINT PK_Stop_T PRIMARY KEY ( Stop_ID )
);

CREATE TABLE Route_Stop_T (
Stop_ID CHAR ( 3 )NOT NULL,
Route_ID CHAR ( 3 ) NOT NULL,
CONSTRAINT FK_Route_T FOREIGN KEY ( Route_ID ) REFERENCES Route_T ( Route_ID ),
CONSTRAINT FK_Stop_T FOREIGN KEY ( Stop_ID ) REFERENCES Stop_T ( Stop_ID )
);

CREATE TABLE Train_T (
Train_ID CHAR ( 4 ),
Route_ID CHAR ( 3 ) NOT NULL,
Driv_ID CHAR ( 4 ) NOT NULL UNIQUE,
CONSTRAINT PK_Train_T PRIMARY KEY ( Train_ID ),
CONSTRAINT FK2_Driver_T FOREIGN KEY ( Driv_ID ) REFERENCES Driver_T ( Driv_ID )
);

CREATE TABLE Timetable_T (
Timetable_ID CHAR( 3 ) NOT NULL, 
Timetable_Route CHAR( 3 ) NOT NULL,
Train_ID CHAR ( 3 ) NOT NULL,
Timetable_Stop_ID  CHAR ( 3 ) NOT NULL,
Arrival_Time CHAR ( 4 ) DEFAULT NULL,
CONSTRAINT PK_Timetable_T PRIMARY KEY ( Timetable_ID ),
CONSTRAINT FK_TimetableTrain FOREIGN KEY ( Train_ID ) REFERENCES Train_T (Train_ID),
CONSTRAINT FK_TimetableRout FOREIGN KEY ( Timetable_Route ) REFERENCES Route_T ( Route_ID )
);

-- eof: Otrain-DDL.sql


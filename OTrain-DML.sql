-- Otrain-DML.sql 
-- Authors: Hrytsyk Anton, Andrew LeBlanc 
-- November 17 2018
-- Last modified on November 17 2018, headers and footers were added
-- 17 nov 2018, pg version

DELETE FROM Timetable_T; -- Child
DELETE FROM Train_T; -- Child
DELETE FROM Route_Stop_T; -- Child
DELETE FROM Driver_T; -- Parent
DELETE FROM Route_T; -- Parent
DELETE FROM Stop_T; -- Parent

-- Driver
INSERT INTO Driver_T ( Driv_ID, Driv_Fname, Driv_Lname) 
VALUES ('D001', 'Saif', 'Terai');
INSERT INTO Driver_T ( Driv_ID, Driv_Fname, Driv_Lname) 
VALUES ('D002', 'Saif', 'Terai');
INSERT INTO Driver_T ( Driv_ID, Driv_Fname, Driv_Lname) 
VALUES ('D003', 'Saif', 'Terai');
INSERT INTO Driver_T ( Driv_ID, Driv_Fname, Driv_Lname) 
VALUES ('D004', 'Saif', 'Terai');
INSERT INTO Driver_T ( Driv_ID, Driv_Fname, Driv_Lname) 
VALUES ('D005', 'Saif', 'Terai');
INSERT INTO Driver_T ( Driv_ID, Driv_Fname, Driv_Lname) 
VALUES ('D006', 'Saif', 'Terai');

-- Route
INSERT INTO Route_T ( Route_ID, Route_Stops, Route_Timetable )
VALUES ('r01', 3, '01');
INSERT INTO Route_T ( Route_ID, Route_Stops, Route_Timetable )
VALUES ('r02', 3, '02');

-- Stop
INSERT INTO Stop_T ( Stop_ID, Stop_Loc, Stop_number )
VALUES ('s01', 'locat', 001 );
INSERT INTO Stop_T ( Stop_ID, Stop_Loc, Stop_number )
VALUES ('s02', 'locat', 002 );
INSERT INTO Stop_T ( Stop_ID, Stop_Loc, Stop_number )
VALUES ('s03', 'locat', 003 );
INSERT INTO Stop_T ( Stop_ID, Stop_Loc, Stop_number )
VALUES ('s04', 'locat', 004 );
INSERT INTO Stop_T ( Stop_ID, Stop_Loc, Stop_number )
VALUES ('s05', 'locat', 005 );
INSERT INTO Stop_T ( Stop_ID, Stop_Loc, Stop_number )
VALUES ('s06', 'locat', 006 );

-- Route_Stop
INSERT INTO Route_Stop_T ( Stop_ID, Route_ID )
VALUES ( 's01', 'r01' );
INSERT INTO Route_Stop_T ( Stop_ID, Route_ID )
VALUES ( 's02', 'r01' );
INSERT INTO Route_Stop_T ( Stop_ID, Route_ID )
VALUES ( 's03', 'r01' );
INSERT INTO Route_Stop_T ( Stop_ID, Route_ID )
VALUES ( 's04', 'r02' );
INSERT INTO Route_Stop_T ( Stop_ID, Route_ID )
VALUES ( 's05', 'r02' );
INSERT INTO Route_Stop_T ( Stop_ID, Route_ID )
VALUES ( 's06', 'r02' );

-- Train
INSERT INTO Train_T ( Train_ID, Route_ID, Driv_ID ) 
VALUES ( 'T01', 'r01', 'D001' );
INSERT INTO Train_T ( Train_ID, Route_ID, Driv_ID ) 
VALUES ( 'T02', 'r01', 'D002' );
INSERT INTO Train_T ( Train_ID, Route_ID, Driv_ID ) 
VALUES ( 'T03', 'r01', 'D003' );
INSERT INTO Train_T ( Train_ID, Route_ID, Driv_ID ) 
VALUES ( 'T04', 'r01', 'D004' );
INSERT INTO Train_T ( Train_ID, Route_ID, Driv_ID ) 
VALUES ( 'T05', 'r02', 'D005' );
INSERT INTO Train_T ( Train_ID, Route_ID, Driv_ID ) 
VALUES ( 'T06', 'r02', 'D006' );


-- Timetable

-- Route 1 timetable 
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't1', 'r01', 'T01', 's01', '6AM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't4', 'r01', 'T02', 's01', '1PM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't7', 'r01', 'T03', 's01', '11PM' );

INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't2', 'r01', 'T01', 's02', '6AM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't5', 'r01', 'T02', 's02', '1PM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't8', 'r01', 'T03', 's02', '11PM' );

INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't3', 'r01', 'T01', 's03', '6AM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't6', 'r01', 'T02', 's03', '1PM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't9', 'r01', 'T03', 's03', '11PM' );

-- Route 2 timetable
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't10', 'r02', 'T04', 's04', '5AM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't14', 'r02', 'T05', 's04', '4PM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't17', 'r02', 'T06', 's04', '11PM' );

INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't12', 'r02', 'T04', 's05', '5AM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't15', 'r02', 'T05', 's05', '4PM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't18', 'r02', 'T06', 's05', '11PM' );

INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't13', 'r02', 'T04', 's06', '5AM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't16', 'r02', 'T05', 's06', '4PM' );
INSERT INTO Timetable_T ( Timetable_ID, Timetable_Route, Train_ID, Timetable_Stop_ID, Arrival_Time )
VALUES ( 't19', 'r02', 'T06', 's06', '11PM' );


-- eof: Otrain-DML.sql
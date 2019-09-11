-- Querie.sql 
-- Authors: Hrytsyk Anton, Andrew LeBlanc 
-- November 17 2018
-- Last modified on November 17 2018, headers and footers were added
-- 17 nov 2018, pg version

/** 
 Join 1 (Left outer) 
 Shows driver's first name, driver's id, and the route that he's on
*/
SELECT driver_t.driv_fname, Train_t.driv_id, train_t.route_id
FROM driver_t
LEFT JOIN train_t
ON driver_t.driv_id = train_t.driv_id;

/** 
 Join 2 (Right outer) 
 Shows stop id, train number and it's arrival time
*/
SELECT train_t.route_id, timetable_T.train_id, timetable_t.arrival_time
FROM train_t
RIGHT JOIN timetable_t
ON timetable_t.train_id = train_t.train_id;

/** 
 Union (Union join) 
 Displays stop locations under stop names 
 and their ids under their route numbers
*/
SELECT * from Route_Stop_T
UNION
SELECT stop_loc, stop_id FROM Stop_T
ORDER BY route_id;

/** Creates Metadata */
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE 
TABLE_NAME = 'timetable_t' OR
TABLE_NAME = 'train_t' OR
TABLE_NAME = 'route_stop_t' OR 
TABLE_NAME = 'drive_t' OR
TABLE_NAME = 'route_t' OR 
TABLE_NAME = 'stop_t';

/** 
 Subquery 1
 Displays stop locations and stop ids on route 1
*/
SELECT stop_loc, stop_id
FROM stop_t
WHERE stop_id
IN ( SELECT timetable_stop_id
FROM timetable_t WHERE timetable_route = 'r01');

/** 
 Subquery 2
 Displays stop locations and stop ids on route 2
*/
SELECT stop_loc, stop_id
FROM stop_t
WHERE stop_id
IN ( SELECT timetable_stop_id
FROM timetable_t WHERE timetable_route = 'r02');

/** Index queries */
SELECT * FROM driver_t
WHERE driv_id = 'D001';

SELECT * FROM timetable_T
WHERE Timetable_ID = 't1';



-- eof: Querie.sql
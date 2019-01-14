/* The database shall consist of at least two tables user_group and room_access.
The user_groups table shall contain the following columns:
1. IDUser_groups
2. User_name - Primary key
3. User_group - the groups to which the user belongs to*/

/* The second table room_access shall contain the following columns:
1. idRoom_access
2. Room  - Room to which people in a group will have access to
3. Group_name - name of the group to which the user belongs to
*/

/* Since one record of user_groups table can map to multiple records of table room_access 
and vice-versa - this is a many-to-many relationship database*/

INSERT INTO User_groups (idUser_groups, User_name, User_group) 
VALUES (1, 'Modesto', 'I.T.');

INSERT INTO User_groups (idUser_groups, User_name, User_group) 
VALUES (2, 'Ayine', 'I.T.');

INSERT INTO User_groups (idUser_groups, User_name, User_group) 
VALUES (3, 'Christopher', 'Sales');

INSERT INTO User_groups (idUser_groups, User_name, User_group) 
VALUES (4, 'Cheong woo', 'Sales');

INSERT INTO User_groups (idUser_groups, User_name, User_group) 
VALUES (5, 'Saulat', 'Administration');

INSERT INTO User_groups (idUser_groups, User_name, User_group) 
VALUES (NULL, '', 'Operations');

INSERT INTO User_groups (idUser_groups, User_name, User_group) 
VALUES (6, 'Heidy', '');

INSERT INTO Room_access (idRoom_access, Room, Group_name) 
VALUES (1, '101', 'I.T.');

INSERT INTO Room_access (idRoom_access, Room, Group_name) 
VALUES (2, '102', 'I.T.');

INSERT INTO Room_access (idRoom_access, Room, Group_name) 
VALUES (2, '102', 'Sales');

INSERT INTO Room_access (idRoom_access, Room, Group_name) 
VALUES (3, 'Auditorium A', 'Sales');

INSERT INTO Room_access (idRoom_access, Room, Group_name) 
VALUES (4, 'Auditorium B', '');

/*Question 1*/

SELECT * FROM Access_Management.User_groups 
where User_group in ('I.T.', 'Sales','Administration', 'Operations');

/*Question 2*/

SELECT * FROM Access_Management.Room_access;

/*Question 3*/
SELECT a.User_name, a.User_group,b.Room FROM Access_Management.User_groups as a 
inner join Access_Management.Room_access as b on a.user_group=b.Group_name
where User_group in ('I.T.', 'Sales','Administration', 'Operations')
order by a.User_name asc, a.User_group asc, b.Room asc;

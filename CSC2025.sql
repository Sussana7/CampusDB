-- Create a database called CSC2024

-- To create a table called Instructor

CREATE TABLE Instructor(
InstName nvarchar (50),
InstOffice nvarchar (10),
InstRank nvarchar(20)
constraint PK_Inst Primary Key (InstName)
);

-- To create a table called Course

CREATE TABLE Course(
CourseNo nvarchar (10),
Title nvarchar (100),
CrHour nvarchar(2),
InstName nvarchar (50),
constraint PK_Course Primary Key (CourseNo),
constraint FK_Inst Foreign Key (InstName) References Instructor(InstName),
);

-- To create a table called Student

CREATE TABLE Student(
studentNo nvarchar (10),
LastName nvarchar (20),
FirstName nvarchar (20),
AddressType nvarchar (50),
City nvarchar (50),
StateCity nvarchar (5),
Zip nvarchar (10),
EnrollDate nvarchar (50),
Undergrad nvarchar (5),
constraint PK_Student Primary Key (studentNo),
);


-- To create a table called Grade

CREATE TABLE Grade (
InstName nvarchar (50),
studentNo nvarchar (10),
CourseNo nvarchar (10),
StudentGrade nvarchar (2),
constraint PK_Grade Primary Key (StudentNo, InstName, CourseNo),
constraint FK_Grade_Student Foreign Key (studentNo) References Student(studentNo),
constraint FK_Grade_Inst Foreign Key (InstName) References Instructor(InstName),
constraint FK_Grade_Course Foreign Key (CourseNo) References Course(CourseNo)
);


-- To create a table called Takes

CREATE TABLE Takes (
studentNo nvarchar (10),
CourseNo nvarchar (10),
Title nvarchar (100),
constraint PK_Takes Primary Key (CourseNo, studentNo),
constraint FK_Takes_Course Foreign Key (CourseNo) References Course(CourseNo),
constraint FK_Takes_Student Foreign Key (studentNo) References Student(studentNo)
);


-- Inserting data into Instructor Table

INSERT INTO Instructor
VALUES

('Lujan', 'BE109', 'Assistant'),
('Morris', 'BE110', 'Full'),
('Presley', 'BE144', 'Associate'),
('Wilke', 'BE220', 'Full');


-- Inserting data into Course Table

INSERT INTO Course
VALUES 

('DIS 110', 'Introduction to DOS', 2, 'Lujan'),
('DIS 118', 'Microcomputer Applications', 3, 'Wilke'),
('DIS 138', 'Introduction to Windows', 2, 'Lujan'),
('DIS 140', 'Introduction to Databases/Access', 3, 'Presley'),
('DIS 150', 'Introduction to Spreadsheet/Excel', 2, 'Morris');


-- Inserting data into Student Table

INSERT INTO Student
VALUES

(0103, 'OCasey', 'Harriet', '4088 Ottumwa Way', 'Lexington', 'KY', 40515, '8/25/1997', 'Yes'),
(0122, 'Logan', 'Janet', '860 Charleston St.', 'Lexington', 'MA', 55500, '1/19/1998', 'No'),
(0123, 'Hagen', 'Greg', '6065 Rainbow Falls Rd.', 'Springfield', 'MO', 65803, '6/10/1997', 'Yes'),
(0139, 'Carrol', 'Pat', '4018 Landers Lane', 'Lafayette', 'CO', 84548, '8/25/1997', 'Yes'),
(0148, 'Wolf', 'Bee', '1775 Bear Trail', 'Cincinati', 'OH', 45208, '1/19/1998', 'Yes'),
(0167, 'Krumple', 'Scott', '580 E Main St.', 'Lexington', 'KY', 40506-0034, '8/25/1997', 'No'),
(0171, 'Harvey', 'Elliot', '34 Kerry Dr', 'El Mano', 'CO', 80646, '8/25/1997', 'Yes'),
(0181, 'Zygote', 'Carrie', '8607 Ferndale St.', 'Grenoble', 'CA', 91360-4260, '8/25/1997', 'Yes'),
(0194, 'Loftus', 'Abner', '8077 Montana Place', 'Big Fish Bay', 'WI', 53717, '1/19/1998', 'Yes'),
(0251, 'Grainger' , 'John', '2256 N Sante Fe Dr.', 'Iliase', 'CA', 91210, '1/19/1998', 'Yes');


-- Inserting data into Grade Table

INSERT INTO Grade
VALUES

('Lujan', 0103, 'DIS 110', 'A'),
('Lujan', 0123, 'DIS 110', 'B'),
('Lujan', 0122, 'DIS 138', 'A'),
('Lujan', 0167, 'DIS 138', 'C'),
('Morris', 0148, 'DIS 150', 'C'),
('Morris', 0167, 'DIS 150', 'D'),
('Morris', 0181, 'DIS 150', 'E'),
('Presley', 0122, 'DIS 140', 'A'),
('Presley', 0123, 'DIS 140', 'B'),
('Presley', 0148, 'DIS 140', 'C'),
('Presley', 0167, 'DIS 140', 'C'),
('Presley', 0181, 'DIS 140', 'B'),
('Wilke', 0103, 'DIS 118', 'A'),
('Wilke', 0122, 'DIS 118', 'A'),
('Wilke', 0181, 'DIS 118', 'D');


-- Inserting data into Takes Table

INSERT INTO Takes
VALUES

(0103, 'DIS 110', 'Introduction to DOS'),
(0103, 'DIS 118', 'Microcomputer Applications'),
(0122, 'DIS 118', 'Microcomputer Applications'),
(0122, 'DIS 138', 'Introduction to Windows'),
(0122, 'DIS 140', 'Introduction to Databases/Access'),
(0123,'DIS 110', 'Introduction to DOS'),
(0123, 'DIS 140', 'Introduction to Databases/Access'),
(0148, 'DIS 140', 'Introduction to Databases/Access'),
(0148, 'DIS 150', 'Introduction to Spreadsheet/Excel'),
(0167, 'DIS 138', 'Introduction to Windows'),
(0167, 'DIS 140', 'Introduction to Databases/Access'),
(0167, 'DIS 150', 'Introduction to Spreadsheet/Excel'),
(0181, 'DIS 118', 'Microcomputer Applications'),
(0181, 'DIS 140', 'Introduction to Databases/Access'),
(0181, 'DIS 150', 'Introduction to Spreadsheet/Excel');

SELECT *
FROM student


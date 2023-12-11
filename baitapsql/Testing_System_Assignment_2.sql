DROP DATABASE IF EXISTS Testing_System_Assignment_2;
CREATE DATABASE Testing_System_Assignment_2;
USE Testing_System_Assignment_2;

DROP TABLE IF EXISTS Department;
CREATE TABLE Department
(
	DepartmentID		INT PRIMARY KEY,
	DepartmentName		VARCHAR(255)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Operations');
SELECT * FROM Department;

DROP TABLE IF EXISTS Position;
CREATE TABLE `Position`
(
	PositionID			INT PRIMARY KEY,
	PositionName		VARCHAR(255)
);
INSERT INTO Position (PositionID, PositionName) VALUES
(1, 'Manager'),
(2, 'Developer'),
(3, 'HR Specialist'),
(4, 'Marketing Specialist'),
(5, 'Operations Manager');
SELECT * FROM Position;

DROP TABLE IF EXISTS Account;
CREATE TABLE `Account`
(
	AccountID			INT PRIMARY KEY,
	Email				VARCHAR(255),
	Username			VARCHAR(255),
	FullName			VARCHAR(255),
	DepartmentID		INT,
	PositionID			INT,
	CreateDate			DATE,
	FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
	FOREIGN KEY (PositionID) REFERENCES `Position`(PositionID)
);
INSERT INTO Account (AccountID, Email, Username, FullName, DepartmentID, PositionID, CreateDate) VALUES
(1, 'user1@example.com', 'user1', 'User One', 1, 2, '2023-01-01'),
(2, 'user2@example.com', 'user2', 'User Two', 2, 3, '2023-01-02'),
(3, 'user3@example.com', 'user3', 'User Three', 3, 1, '2023-01-03'),
(4, 'user4@example.com', 'user4', 'User Four', 1, 4, '2023-01-04'),
(5, 'user5@example.com', 'user5', 'User Five', 2, 2, '2023-01-05');
SELECT * FROM `Account`;

DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group`
(
	GroupID				INT PRIMARY KEY,
	GroupName			VARCHAR(255),
	CreatorID			INT,
	CreateDate			DATE,
	FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);
INSERT INTO `Group` (GroupID, GroupName, CreatorID, CreateDate) VALUES
(1, 'Development Team', 1, '2023-01-03'),
(2, 'HR Team', 2, '2023-01-04'),
(3, 'Marketing Team', 4, '2023-01-05'),
(4, 'Operations Team', 5, '2023-01-06'),
(5, 'Management Team', 1, '2023-01-07');
SELECT * FROM `Group`;

DROP TABLE IF EXISTS GroupAccount;
CREATE TABLE GroupAccount
(
	GroupID				INT,
	AccountID			INT,
	JoinDate			DATE,
	PRIMARY KEY (GroupID, AccountID),
	FOREIGN KEY (GroupID) REFERENCES `Group`(GroupID),
	FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);
INSERT INTO GroupAccount (GroupID, AccountID, JoinDate) VALUES
(1, 1, '2023-01-03'),
(1, 2, '2023-01-03'),
(2, 2, '2023-01-04'),
(3, 3, '2023-01-05'),
(4, 4, '2023-01-06');
SELECT * FROM GroupAccount;

DROP TABLE IF EXISTS TypeQuestion;
CREATE TABLE TypeQuestion
(
    TypeID INT UNSIGNED PRIMARY KEY,
    TypeName VARCHAR(255)
);
INSERT INTO TypeQuestion (TypeID, TypeName) VALUES
(1, 'Multiple Choice'),
(2, 'True/False'),
(3, 'Short Answer'),
(4, 'Essay'),
(5, 'Matching');
SELECT * FROM TypeQuestion;

DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion
(
	CategoryID			INT PRIMARY KEY,
	CategoryName		VARCHAR(255)
);
INSERT INTO CategoryQuestion (CategoryID, CategoryName) VALUES
(1, 'Programming'),
(2, 'Human Resources'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'Operations');
SELECT * FROM CategoryQuestion;

DROP TABLE IF EXISTS Question;
CREATE TABLE Question
(
    QuestionID INT PRIMARY KEY,
    Content VARCHAR(500),
    CategoryID INT,
    TypeID INT UNSIGNED,
    CreatorID INT,
    CreateDate DATE,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY (TypeID) REFERENCES TypeQuestion(TypeID),
    FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);

INSERT INTO Question (QuestionID, Content, CategoryID, TypeID, CreatorID, CreateDate) VALUES
(1, 'What is the capital of France?', 2, 1, 1, '2023-01-05'),
(2, 'What is the main programming language of the web?', 1, 1, 2, '2023-01-06'),
(3, 'Explain the concept of ROI.', 4, 3, 4, '2023-01-07'),
(4, 'Describe the OSI model.', 1, 4, 5, '2023-01-08'),
(5, 'What is the role of HR in an organization?', 2, 2, 3, '2023-01-09');
SELECT * FROM Question;

DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer
(
	AnswerID			INT PRIMARY KEY,
	Content				VARCHAR(255),
	QuestionID			INT,
	isCorrect			VARCHAR(50),
	FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);
INSERT INTO Answer (AnswerID, Content, QuestionID, isCorrect) VALUES
(1, 'Paris', 1, 'true'),
(2, 'Berlin', 1, 'false'),
(3, 'JavaScript', 2, 'true'),
(4, 'Python', 2, 'false'),
(5, 'Return on Investment', 3, 'true'),
(6, 'Operating System Interface', 4, 'false'),
(7, 'Model for Business Process Outsourcing', 5, 'false'),
(8, 'Human Resources', 5, 'true'),
(9, 'Short answer example.', 3, 'true'),
(10, 'Essay answer example.', 4, 'true');
SELECT * FROM Answer;

DROP TABLE IF EXISTS Exam;
CREATE TABLE Exam
(
	ExamID				INT AUTO_INCREMENT PRIMARY KEY,
	Code				VARCHAR(255) NOT NULL,
	Title				VARCHAR(255) NOT NULL,
	CategoryID			INT,
	Duration			INT,
	CreatorID			INT,
	CreateDate			DATE,
	FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
	FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);
INSERT INTO Exam (Code, Title, CategoryID, Duration, CreatorID, CreateDate) VALUES
('EXAM001', 'General Knowledge', 1, 60, 1, '2023-01-07'),
('EXAM002', 'Programming Basics', 1, 45, 2, '2023-01-08'),
('EXAM003', 'Finance Fundamentals', 4, 60, 4, '2023-01-09'),
('EXAM004', 'Marketing Principles', 3, 45, 5, '2023-01-10'),
('EXAM005', 'Operations Management', 5, 75, 1, '2023-01-11');
SELECT * FROM Exam;

DROP TABLE IF EXISTS ExamQuestion;
CREATE TABLE ExamQuestion
(
	ExamID				INT,
    QuestionID			INT,
    PRIMARY KEY (ExamID, QuestionID),
	FOREIGN KEY (ExamID) REFERENCES Exam(ExamID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO ExamQuestion (ExamID, QuestionID) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 4),
(4, 5);
SELECT * FROM ExamQuestion;


DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

DROP TABLE IF EXISTS Department;
CREATE TABLE Department
(
	DepartmentID		INT,
	DepartmentName		VARCHAR(50),
)

DROP TABLE IF EXISTS Position;
CREATE TABLE 'Position'(
	PositionID			INT,
	PositionName		VARCHAR(50),
)

DROP TABLE IF EXISTS Account;
CREATE TABLE Account(
	AccountID			INT,
	Email				VARCHAR(50),
	Username			VARCHAR(50),
	FullName			VARCHAR(50),
	DepartmentID		VARCHAR(50),
	PositionID			VARCHAR(50),
	CreateDate			DATE,
)

DROP TABLE IF EXISTS [Group];
CREATE TABLE [Group](
	GroupID				INT,
	GroupName			VARCHAR(50),
	CreatorID			INT,
	CreateDate			DATE,
)

DROP TABLE IF EXISTS GroupAccount;
CREATE TABLE GroupAccount(
	GroupID				VARCHAR(50),
	AccountID			VARCHAR(50),
	JoinDate			DATE,
)

DROP TABLE IF EXISTS TypeQuestion;
CREATE TABLE TypeQuestion(
	TypeID				VARCHAR(50),
	TypeName			VARCHAR(50),
)

DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion(
	CategoryID			VARCHAR(50),
	CategoryName		VARCHAR(50),
)

DROP TABLE IF EXISTS Question;
CREATE TABLE Question(
	QuestionID			VARCHAR(50),
	Content				VARCHAR(50),
	CategoryID			VARCHAR(50),
	TypeID				VARCHAR(50),
	CreatorID			INT,
	CreateDate			DATE,
)

DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer(
	AnswerID			VARCHAR(50),
	Content				VARCHAR(50),
	QuestionID			VARCHAR(50),	
	isCorrect			VARCHAR(50),
)
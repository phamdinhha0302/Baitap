
USE Testing_System_Assignment_2;

-- Q1 Q2 ;
-- Thêm dữ liệu cho bảng Department
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(6, 'Sales'),
(7, 'Customer Service'),
(8, 'Research and Development'),
(9, 'Legal Affairs'),
(10, 'Quality Assurance'),
(11, 'Administration'),
(12, 'Public Relations'),
(13, 'Supply Chain'),
(14, 'Security'),
(15, 'Training');
SELECT * FROM Department;

-- Thêm dữ liệu cho bảng Position
INSERT INTO `Position` (PositionID, PositionName) VALUES
(6, 'Sales Manager'),
(7, 'Software Engineer'),
(8, 'HR Generalist'),
(9, 'Marketing Coordinator'),
(10, 'Operations Supervisor'),
(11, 'Administrative Assistant'),
(12, 'Public Relations Specialist'),
(13, 'Logistics Coordinator'),
(14, 'Security Officer'),
(15, 'Training Specialist');
SELECT * FROM `Position`;

-- Thêm dữ liệu cho bảng Account
INSERT INTO Account (AccountID, Email, Username, FullName, DepartmentID, PositionID, CreateDate) VALUES
(6, 'user6@example.com', 'user6', 'User Six', 6, 6, '2023-01-06'),
(7, 'user7@example.com', 'user7', 'User Seven', 7, 7, '2023-01-07'),
(8, 'user8@example.com', 'user8', 'User Eight', 8, 8, '2023-01-08'),
(9, 'user9@example.com', 'user9', 'User Nine', 9, 9, '2023-01-09'),
(10, 'user10@example.com', 'user10', 'User Ten', 10, 10, '2023-01-10'),
(11, 'user11@example.com', 'user11', 'User Eleven', 11, 11, '2023-01-11'),
(12, 'user12@example.com', 'user12', 'User Twelve', 12, 12, '2023-01-12'),
(13, 'user13@example.com', 'user13', 'User Thirteen', 13, 13, '2023-01-13'),
(14, 'user14@example.com', 'user14', 'User Fourteen', 14, 14, '2023-01-14'),
(15, 'user15@example.com', 'user15', 'User Fifteen', 15, 15, '2023-01-15');
SELECT * FROM Account;

-- Thêm dữ liệu cho bảng `Group`
INSERT INTO `Group` (GroupID, GroupName, CreatorID, CreateDate) VALUES
(6, 'Research Team', 8, '2023-01-08'),
(7, 'Security Task Force', 14, '2023-01-14'),
(8, 'Training Committee', 15, '2023-01-15'),
(9, 'Sales Strategies Group', 6, '2023-01-06'),
(10, 'Administration Squad', 11, '2023-01-11');
SELECT * FROM `Group`;

-- Thêm dữ liệu cho bảng GroupAccount
INSERT INTO GroupAccount (GroupID, AccountID, JoinDate) VALUES
(6, 8, '2023-01-08'),
(7, 14, '2023-01-14'),
(8, 15, '2023-01-15'),
(9, 6, '2023-01-06'),
(10, 11, '2023-01-11');
SELECT * FROM GroupAccount;

-- Thêm dữ liệu cho bảng TypeQuestion
INSERT INTO TypeQuestion (TypeID, TypeName) VALUES
(6, 'Coding Challenge'),
(7, 'Scenario-based'),
(8, 'Interactive'),
(9, 'Presentation'),
(10, 'Group Discussion'),
(11, 'Quantitative Analysis'),
(12, 'Technical Interview'),
(13, 'Personality Assessment'),
(14, 'Case Study'),
(15, 'Simulation');
SELECT * FROM TypeQuestion;

-- Thêm dữ liệu cho bảng CategoryQuestion
INSERT INTO CategoryQuestion (CategoryID, CategoryName) VALUES
(6, 'Customer Relations'),
(7, 'Product Development'),
(8, 'Employee Engagement'),
(9, 'Market Research'),
(10, 'Process Optimization'),
(11, 'Administrative Procedures'),
(12, 'Public Image Management'),
(13, 'Logistics and Supply Chain'),
(14, 'Security Measures'),
(15, 'Training and Development');
SELECT * FROM CategoryQuestion;

-- Thêm dữ liệu cho bảng Question
INSERT INTO Question (QuestionID, Content, CategoryID, TypeID, CreatorID, CreateDate) VALUES
(6, 'How would you handle a customer complaint?', 6, 7, 7, '2023-01-07'),
(7, 'Outline the steps to launch a new product.', 7, 6, 8, '2023-01-08'),
(8, 'Describe an effective employee engagement initiative.', 8, 9, 9, '2023-01-09'),
(9, 'What methods would you use for market research?', 9, 8, 10, '2023-01-10'),
(10, 'Optimize a process in your department.', 10, 12, 11, '2023-01-11'),
(11, 'How do you handle administrative tasks efficiently?', 11, 11, 12, '2023-01-12'),
(12, 'Manage a crisis to maintain public image.', 12, 9, 13, '2023-01-13'),
(13, 'Ensure smooth logistics and supply chain operations.', 13, 10, 14, '2023-01-14'),
(14, 'Implement effective security measures in the workplace.', 14, 7, 15, '2023-01-15'),
(15, 'Design a training program for new employees.', 15, 8, 6, '2023-01-06');
SELECT * FROM Question;

-- Thêm dữ liệu cho bảng Answer
INSERT INTO Answer (AnswerID, Content, QuestionID, isCorrect) VALUES
(16, 'Listen to their concerns and empathize.', 6, 'true'),
(17, 'Conduct market research and analyze trends.', 7, 'true'),
(18, 'Implement recognition programs and team-building events.', 8, 'true'),
(19, 'Surveys, interviews, and data analysis.', 9, 'true'),
(20, 'Identify bottlenecks and streamline the workflow.', 10, 'true'),
(21, 'Prioritize tasks, use productivity tools, and delegate.', 11, 'true'),
(22, 'Communicate transparently and address public concerns.', 12, 'true'),
(23, 'Optimize supply chain processes and inventory management.', 13, 'true'),
(24, 'Access control, surveillance, and cybersecurity measures.', 14, 'true'),
(25, 'Combine presentations, workshops, and hands-on activities.', 15, 'true');
SELECT * FROM Answer;

-- Thêm dữ liệu cho bảng Exam
INSERT INTO Exam (Code, Title, CategoryID, Duration, CreatorID, CreateDate) VALUES
('EXAM006', 'Customer Relations Mastery', 6, 60, 7, '2023-01-16'),
('EXAM007', 'Product Development Strategies', 7, 45, 8, '2023-01-17'),
('EXAM008', 'Employee Engagement Assessment', 8, 60, 9, '2023-01-18'),
('EXAM009', 'Market Research Proficiency', 9, 45, 10, '2023-01-19'),
('EXAM010', 'Process Optimization Challenge', 10, 75, 11, '2023-01-20');
SELECT * FROM Exam;

-- Thêm dữ liệu cho bảng ExamQuestion
INSERT INTO ExamQuestion (ExamID, QuestionID) VALUES
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);
SELECT * FROM ExamQuestion;

-- Q3
SELECT DepartmentID FROM Department 
WHERE  DepartmentName = "sales";

-- Q4
SELECT * FROM `Account`
WHERE LENGTH(FullName) = ( SELECT MAX(LENGTH(FullName)) FROM  `Account`)
ORDER BY  FullName DESC;

-- Q5
SELECT * FROM `Account`
WHERE LENGTH(FullName) = ( SELECT MAX(LENGTH(FullName)) FROM  `Account` WHERE DepartmentID = 3 ) AND DepartmentID = 3;

-- Q6



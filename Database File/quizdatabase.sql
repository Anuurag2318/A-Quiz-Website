-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 09:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cppanswers`
--

CREATE TABLE `cppanswers` (
  `ans_id` int(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` int(255) NOT NULL,
  `ans_options` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cppanswers`
--

INSERT INTO `cppanswers` (`ans_id`, `answer`, `is_correct`, `ans_options`) VALUES
(1, 'object oriented programming language', 0, 1),
(2, 'procedural programming language', 0, 1),
(3, 'both procedural and object oriented programming language', 1, 1),
(4, 'functional programming language', 0, 1),
(5, 'VAR_1234', 1, 2),
(6, '$var_name', 0, 2),
(7, '7VARNAME', 0, 2),
(8, '7var_name', 0, 2),
(9, 'Left-right', 0, 3),
(10, 'Right-left', 0, 3),
(11, 'Bottom-up', 1, 3),
(12, 'Top-down', 0, 3),
(13, 'The program is not semantically correct', 0, 4),
(14, 'The program is compiled and executed successfully', 1, 4),
(15, 'The program gives a compile-time error', 0, 4),
(16, 'The program compiled successfully but throws an error during run-time', 0, 4),
(17, 'Binary', 0, 5),
(18, 'VTC', 0, 5),
(19, 'Text', 1, 5),
(20, 'ISCII', 0, 5),
(21, 'array{10};', 0, 6),
(22, 'array array[10];', 0, 6),
(23, 'int array;', 0, 6),
(24, 'int array[10];', 1, 6),
(25, '#macro', 0, 7),
(26, '#define', 1, 7),
(27, 'macro', 0, 7),
(28, 'define', 0, 7),
(29, 'double', 0, 8),
(30, 'float', 0, 8),
(31, 'int ', 0, 8),
(32, 'bool', 1, 8),
(33, 'call by object', 0, 9),
(34, 'call by pointer', 0, 9),
(35, 'call by value', 0, 9),
(36, 'call by reference', 1, 9),
(37, 'catch', 0, 10),
(38, 'throw', 0, 10),
(39, 'try', 1, 10),
(40, 'finally', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cppquestions`
--

CREATE TABLE `cppquestions` (
  `qid` int(255) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cppquestions`
--

INSERT INTO `cppquestions` (`qid`, `question`) VALUES
(1, 'Q1: C++ is ______________'),
(2, 'Q2:Which of the following is a correct identifier in C++?'),
(3, 'Q3:Which of the following approach is used by C++?'),
(4, 'Q4:What happens if the following C++ statement is compiled and executed?\n\n\n\"int *ptr = NULL;\ndelete ptr;\"'),
(5, 'Q5:By default, all the files in C++ are opened in _________ mode.'),
(6, 'Q6:Which of the following correctly declares an array in C++?'),
(7, 'Q7:Which keyword is used to define the macros in c++?'),
(8, 'Q8:Which of the following type is provided by C++ but not C?'),
(9, 'Q9:Which is more effective while calling the C++ functions?'),
(10, 'Q10:The C++ code which causes abnormal termination/behaviour of a program should be written under _________ block.');

-- --------------------------------------------------------

--
-- Table structure for table `cproganswers`
--

CREATE TABLE `cproganswers` (
  `ans_id` int(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` int(255) NOT NULL,
  `ans_options` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cproganswers`
--

INSERT INTO `cproganswers` (`ans_id`, `answer`, `is_correct`, `ans_options`) VALUES
(1, 'int number;', 0, 1),
(2, 'float rate;', 0, 1),
(3, 'int variable', 0, 1),
(4, 'int $main', 1, 1),
(5, 'True or False', 0, 2),
(6, '0 or 1', 1, 2),
(7, '0 if an expression is false and any positive number if an expression is true', 0, 2),
(8, 'None of the mentioned', 0, 2),
(9, 'The program must have at least one function.', 1, 3),
(10, 'The program does not require any function.', 0, 3),
(11, 'Input data', 0, 3),
(12, 'Output data', 0, 3),
(13, 'The value of (a+1)', 0, 4),
(14, 'The current value of a', 1, 4),
(15, 'Error message', 0, 4),
(16, 'Garbage', 0, 4),
(17, 'for', 0, 5),
(18, 'while', 0, 5),
(19, 'switch', 0, 5),
(20, 'do while', 1, 5),
(21, 'LowerCase letters', 1, 6),
(22, 'UpperCase letters', 0, 6),
(23, 'CamelCase letters', 0, 6),
(24, 'None of the mentioned', 0, 6),
(25, 'True', 1, 7),
(26, 'False', 0, 7),
(27, 'Depends on the standard', 0, 7),
(28, 'Depends on the platform', 0, 7),
(29, 'Jagged Array', 1, 8),
(30, 'Rectangular Array', 0, 8),
(31, 'Cuboidal Array', 0, 8),
(32, 'Multidimensional Array', 0, 8),
(33, 'char *', 0, 9),
(34, 'struct', 0, 9),
(35, 'void', 0, 9),
(36, 'none of the mentioned', 1, 9),
(37, 'typedef char [] string;', 0, 10),
(38, 'typedef char *string;', 1, 10),
(39, 'typedef char [] string; and typedef char *string;', 0, 10),
(40, 'Such expression cannot be generated in C', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cprogquestions`
--

CREATE TABLE `cprogquestions` (
  `qid` int(255) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cprogquestions`
--

INSERT INTO `cprogquestions` (`qid`, `question`) VALUES
(1, 'Q1:Which of the following is not a valid C variable name?'),
(2, 'Q2: What is the result of the logical or relational expression in C?'),
(3, 'Q3: What is required in each C program?'),
(4, 'Q4: What is the output of this statement: printf(\'%d\', (a++))?'),
(5, 'Q5: Which one of the following is a loop construct that will always be executed once?'),
(6, 'Q6:All keywords in C are in ____________'),
(7, 'Q7:C preprocessors can have compiler-specific features.'),
(8, 'Q8:Which of the following is not possible statically in C language?'),
(9, 'Q9:Which of the following return-type cannot be used for a function in C?'),
(10, 'Q10:Which option should be selected to work the following C expression?\r\n	\r\nstring p = \"HELLO\";\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `cssanswers`
--

CREATE TABLE `cssanswers` (
  `ans_id` int(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` int(255) NOT NULL,
  `ans_options` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cssanswers`
--

INSERT INTO `cssanswers` (`ans_id`, `answer`, `is_correct`, `ans_options`) VALUES
(1, 'Cascade style sheets', 0, 1),
(2, 'Color and style sheets', 0, 1),
(3, 'Cascading style sheets', 1, 1),
(4, 'None of the above', 0, 1),
(5, 'calc() function', 1, 2),
(6, 'calculator() function', 0, 2),
(7, 'calculate() function', 0, 2),
(8, 'cal() function', 0, 2),
(9, 'text-style', 0, 3),
(10, 'text-size', 0, 3),
(11, 'font-size', 1, 3),
(12, 'None of the above', 0, 3),
(13, 'background-attachment', 0, 4),
(14, 'background-image', 1, 4),
(15, 'background-color', 0, 4),
(16, 'None of the above', 0, 4),
(17, 'Yes', 0, 5),
(18, 'No', 1, 5),
(19, 'Can\'t say', 0, 5),
(20, 'May be', 0, 5),
(21, 'opacity', 1, 6),
(22, 'filter', 0, 6),
(23, 'visibility', 0, 6),
(24, 'overlay', 0, 6),
(25, 'writing-mode', 1, 7),
(26, 'text-indent', 0, 7),
(27, 'word-break', 0, 7),
(28, 'None of the above', 0, 7),
(29, 'div p', 1, 8),
(30, 'p', 0, 8),
(31, 'div#p', 0, 8),
(32, 'div~p', 0, 8),
(33, 'normal', 0, 9),
(34, 'small-caps', 0, 9),
(35, 'large-caps', 1, 9),
(36, 'inherit', 0, 9),
(37, 'border-collapse', 0, 10),
(38, 'border-radius', 0, 10),
(39, 'border-spacing', 1, 10),
(40, 'None of the above', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cssquestions`
--

CREATE TABLE `cssquestions` (
  `qid` int(255) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cssquestions`
--

INSERT INTO `cssquestions` (`qid`, `question`) VALUES
(1, 'Q1: CSS stands for -'),
(2, 'Q2:Which if the following CSS function allows us to perform calculations?'),
(3, 'Q3:The CSS property used to control the element\'s font-size is -'),
(4, 'Q4:Which of the following CSS property is used to set the background image of an element?'),
(5, 'Q5:Are the negative values allowed in padding property?'),
(6, 'Q6:The CSS property used to specify the transparency of an element is -'),
(7, 'Q7:The CSS property used to specify whether the text is written in the horizontal or vertical direction?'),
(8, 'Q8:Which of the following is the correct syntax to select all paragraph elements in a div element?'),
(9, 'Q9:Which of the following is not a value of the font-variant property in CSS?'),
(10, 'Q10:The CSS property used to set the distance between the borders of the adjacent cells in the table is -');

-- --------------------------------------------------------

--
-- Table structure for table `dbmsanswers`
--

CREATE TABLE `dbmsanswers` (
  `ans_id` int(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` int(25) NOT NULL,
  `ans_options` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbmsanswers`
--

INSERT INTO `dbmsanswers` (`ans_id`, `answer`, `is_correct`, `ans_options`) VALUES
(1, 'DML(Data Manipulation Language)', 0, 1),
(2, 'Query', 0, 1),
(3, 'Relational Schema', 0, 1),
(4, 'DDL(Data Definition Language)', 1, 1),
(5, 'DML(Data Manipulation Language)', 1, 2),
(6, 'DDL(Data Definition Language)', 0, 2),
(7, 'Query', 0, 2),
(8, 'Relational Schema', 0, 2),
(9, 'select * from emp where empid = 10003;', 0, 3),
(10, 'select empid from emp where empid = 10006;', 0, 3),
(11, 'select empid from emp;', 0, 3),
(12, 'select empid where empid = 1009 and Lastname = \'GELLER\';', 1, 3),
(13, 'One class may have many teachers', 0, 4),
(14, 'One teacher can have many classes', 1, 4),
(15, 'Many classes may have many teachers', 0, 4),
(16, 'Many teachers may have many classes', 0, 4),
(17, 'It is a type of system software', 1, 5),
(18, 'It is a kind of application software', 0, 5),
(19, 'It is a kind of general software', 0, 5),
(20, 'Both A and C', 0, 5),
(21, 'File Allocation Tree', 0, 6),
(22, 'File Allocation Table', 1, 6),
(23, 'File Allocation Graph', 0, 6),
(24, 'All of the above', 0, 6),
(25, '8GB', 0, 7),
(26, '4GB', 1, 7),
(27, '4TB', 0, 7),
(28, 'None of the above', 0, 7),
(29, 'New Technology File System', 1, 8),
(30, 'New Tree File System', 0, 8),
(31, 'New Table type File System', 0, 8),
(32, 'Both A and C', 0, 8),
(33, 'Data Management', 0, 9),
(34, 'Data Mining', 0, 9),
(35, 'Data Warehouse', 1, 9),
(36, 'Both B and C', 0, 9),
(37, 'Directory', 0, 10),
(38, 'Sub Data', 0, 10),
(39, 'Warehouse', 0, 10),
(40, 'Meta Data', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `dbmsquestions`
--

CREATE TABLE `dbmsquestions` (
  `qid` int(255) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbmsquestions`
--

INSERT INTO `dbmsquestions` (`qid`, `question`) VALUES
(1, 'Q1:Which of the following is generally used for performing tasks like creating the structure of the relations, deleting relation?'),
(2, 'Q2:Which of the following provides the ability to query information from the database and insert tuples into, delete tuples from, and modify tuples in the database?'),
(3, 'Q3:Which one of the following given statements possibly contains the error?'),
(4, 'Q4:What do you mean by one to many relationships?'),
(5, 'Q5:A Database Management System is a type of _________software.'),
(6, 'Q6:The term \"FAT\" is stands for_____'),
(7, 'Q7:Which of the following can be considered as the maximum size that is supported by FAT?'),
(8, 'Q8:The term \"NTFS\" refers to which one of the following?'),
(9, 'Q9:A huge collection of the information or data accumulated form several different sources is known as ________:'),
(10, 'Q10:Which one of the following refers to the \"data about data\"?');

-- --------------------------------------------------------

--
-- Table structure for table `htmlanswers`
--

CREATE TABLE `htmlanswers` (
  `ans_id` int(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` int(255) NOT NULL,
  `ans_options` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `htmlanswers`
--

INSERT INTO `htmlanswers` (`ans_id`, `answer`, `is_correct`, `ans_options`) VALUES
(1, 'HighText Machine Language', 0, 1),
(2, 'HyperText and links Markup Language', 0, 1),
(3, 'HyperText Markup Language', 1, 1),
(4, 'None of these', 0, 1),
(5, 'Head, Title, HTML, body', 0, 2),
(6, 'HTML, Body, Title, Head', 0, 2),
(7, 'HTML, Head, Title, Body', 0, 2),
(8, 'HTML, Head, Title, Body', 1, 2),
(9, 'class', 0, 3),
(10, 'id', 1, 3),
(11, 'type', 0, 3),
(12, 'None of the above', 0, 3),
(13, 'style', 1, 4),
(14, 'type', 0, 4),
(15, 'class', 0, 4),
(16, 'None of the above', 0, 4),
(17, 'method', 0, 5),
(18, 'action', 0, 5),
(19, 'Both (a) & (b)', 1, 5),
(20, 'None of the above', 0, 5),
(21, 'a format tag.', 0, 6),
(22, 'an empty tag.', 1, 6),
(23, 'All of the above\r\n', 0, 6),
(24, 'None of the above', 0, 6),
(25, 'HTML tag', 0, 7),
(26, 'EM tag', 0, 7),
(27, 'TITLE tag', 0, 7),
(28, 'HEAD tag', 1, 7),
(29, 'Before the border loads', 0, 8),
(30, 'After the table is loaded', 1, 8),
(31, 'In pieces as it loads', 0, 8),
(32, 'None of the above', 0, 8),
(33, 'Increase the softness of your site', 0, 9),
(34, 'Increase the space between cells', 0, 9),
(35, 'Increase the distance between cell and content', 1, 9),
(36, 'All of the above', 0, 9),
(37, 'animated effects\n', 0, 10),
(38, 'videos', 0, 10),
(39, 'images', 1, 10),
(40, 'None of the above', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `htmlquestions`
--

CREATE TABLE `htmlquestions` (
  `qid` int(11) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `htmlquestions`
--

INSERT INTO `htmlquestions` (`qid`, `question`) VALUES
(1, 'Q1:HTML stands for -'),
(2, 'Q2:The correct sequence of HTML tags for starting a webpage is -'),
(3, 'Q3:Which of the following attribute is used to provide a unique name to an element?'),
(4, 'Q4:Which of the following HTML attribute is used to define inline styles?'),
(5, 'Q5:Which of the following are the attributes of the\n\ntag?\n'),
(6, 'Q6:input tag is -'),
(7, 'Q7:The BODY tag is usually used after ______'),
(8, 'Q8:When is the content of a table shown?'),
(9, 'Q9:Increasing the cellpadding means __________'),
(10, 'Q10:Gif and jpg are the two main types of what?');

-- --------------------------------------------------------

--
-- Table structure for table `javaanswers`
--

CREATE TABLE `javaanswers` (
  `ans_id` int(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` int(255) NOT NULL,
  `ans_options` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `javaanswers`
--

INSERT INTO `javaanswers` (`ans_id`, `answer`, `is_correct`, `ans_options`) VALUES
(1, 'Guido van Rossum', 0, 1),
(2, 'James Gosling', 1, 1),
(3, 'Dennis Ritchie', 0, 1),
(4, 'Bjarne Stroustrup', 0, 1),
(5, 'Dynamic', 0, 2),
(6, 'Architecture Neutral', 0, 2),
(7, 'Use of pointers', 1, 2),
(8, 'Object-oriented', 0, 2),
(9, 'JVM', 0, 3),
(10, 'JRE', 0, 3),
(11, 'JDK', 0, 3),
(12, 'JDB', 1, 3),
(13, '24', 0, 4),
(14, '23', 0, 4),
(15, '20', 0, 4),
(16, '25', 1, 4),
(17, 'Runnable Interface', 0, 5),
(18, 'Marker Interface', 1, 5),
(19, 'Abstract Interface', 0, 5),
(20, 'CharSequence Interface', 0, 5),
(21, 'It has only methods', 0, 6),
(22, 'Objects can\'t be created', 0, 6),
(23, 'It has a fixed class name', 0, 6),
(24, 'It has no class name', 1, 6),
(25, 'Applet class', 1, 7),
(26, 'Window class', 0, 7),
(27, 'Frame class', 0, 7),
(28, 'Dialog class', 0, 7),
(29, 'char ch = \'\\utea\';', 1, 8),
(30, 'char ca = \'tea\';', 0, 8),
(31, 'char cr = \\u0223;', 0, 8),
(32, 'char cc = \'\\itea\';', 0, 8),
(33, '.js', 0, 9),
(34, '.txt', 0, 9),
(35, '.class', 0, 9),
(36, '.java', 1, 9),
(37, 'Polymorphism', 0, 10),
(38, 'Inheritance', 0, 10),
(39, 'Compilation', 1, 10),
(40, 'Encapsulation', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `javaquestions`
--

CREATE TABLE `javaquestions` (
  `qid` int(255) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `javaquestions`
--

INSERT INTO `javaquestions` (`qid`, `question`) VALUES
(1, 'Q1:Who invented Java Programming?'),
(2, 'Q2:Which of the following is not a Java feature?'),
(3, 'Q3:_____ is used to find and fix bugs in the Java programs.'),
(4, 'Q4:Evaluate the following Java expression, if x=3, y=5, and z=10: \"++z + y - y + z + x++\"'),
(5, 'Q5:An interface with no fields or methods is known as a ______.'),
(6, 'Q6:Which of the following is true about the anonymous inner class?'),
(7, 'Q7:Which of the following is an immediate subclass of the Panel class?'),
(8, 'Q8:Which of the following is a valid declaration of a char?'),
(9, 'Q9:What is the extension of java code files?'),
(10, 'Q10:Which of the following is not an OOPS concept in Java?');

-- --------------------------------------------------------

--
-- Table structure for table `javascptanswers`
--

CREATE TABLE `javascptanswers` (
  `ans_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` int(255) NOT NULL,
  `ans_options` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `javascptanswers`
--

INSERT INTO `javascptanswers` (`ans_id`, `answer`, `is_correct`, `ans_options`) VALUES
(1, 'Object-Oriented', 0, 1),
(2, 'Object-Based', 1, 1),
(3, 'Assembly-language', 0, 1),
(4, 'High-level', 0, 1),
(5, 'Alternative to if-else', 0, 2),
(6, 'Switch statement', 0, 2),
(7, 'If-then-else statement', 0, 2),
(8, 'immediate if', 1, 2),
(9, 'Shows a warning', 0, 3),
(10, 'Prompts to complete the statement', 0, 3),
(11, 'Throws an error', 0, 3),
(12, 'Ignores the statements', 1, 3),
(13, 'Keywords', 0, 4),
(14, 'Data types', 0, 4),
(15, 'Declaration statements', 1, 4),
(16, 'Prototypes', 0, 4),
(17, '00', 0, 5),
(18, '0x', 0, 5),
(19, '0X', 0, 5),
(20, 'Both 0x and 0X', 1, 5),
(21, 'Prints an exception error', 0, 6),
(22, 'Prints an overflow error', 0, 6),
(23, 'Displays \"Infinity\"', 1, 6),
(24, 'Prints the value as such', 0, 6),
(25, 'Syntax error', 0, 7),
(26, 'Missing of semicolons', 0, 7),
(27, 'Division by zero', 1, 7),
(28, 'Missing of Bracket', 0, 7),
(29, 'toString()', 0, 8),
(30, 'valueOf()', 1, 8),
(31, 'toLocalString()', 0, 8),
(32, 'toPrecision()', 1, 8),
(33, 'Question mark  ?', 0, 9),
(34, '  Colon  : ', 1, 9),
(35, 'subtract -', 0, 9),
(36, 'add  + ', 0, 9),
(37, 'Properties', 0, 10),
(38, 'Prototypes', 0, 10),
(39, 'Definition', 0, 10),
(40, 'Lvalue', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `javascptquestions`
--

CREATE TABLE `javascptquestions` (
  `qid` int(255) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `javascptquestions`
--

INSERT INTO `javascptquestions` (`qid`, `question`) VALUES
(1, 'Q1:Which type of JavaScript language is ___'),
(2, 'Q2:Which one of the following also known as Conditional Expression:'),
(3, 'Q3:When interpreter encounters an empty statements, what it will do:'),
(4, 'Q4:The \"function\" and \" var\" are known as:'),
(5, 'Q5:Which of the following option is used as hexadecimal literal beginning?'),
(6, 'Q6:When there is an indefinite or an infinite value during an arithmetic computation in a program, then JavaScript prints______.'),
(7, 'Q7:In the JavaScript, which one of the following is not considered as an error:'),
(8, 'Q8:Which of the following number object function returns the value of the number?'),
(9, 'Q9:Which one of the following is an ternary operator:'),
(10, 'Q10:\"An expression that can legally appear on the left side of an assignment expression.\" is a well known explanation for variables, properties of objects, and elements of arrays. They are called_____.');

-- --------------------------------------------------------

--
-- Table structure for table `phpanswers`
--

CREATE TABLE `phpanswers` (
  `ans_id` int(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` int(255) NOT NULL,
  `ans_options` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phpanswers`
--

INSERT INTO `phpanswers` (`ans_id`, `answer`, `is_correct`, `ans_options`) VALUES
(1, 'Hypertext Preprocessor', 1, 1),
(2, 'Pretext Hypertext Preprocessor', 0, 1),
(3, 'Personal Home Processor', 0, 1),
(4, 'None of the above', 0, 1),
(5, '! (Exclamation)', 0, 2),
(6, '$ (Dollar)', 1, 2),
(7, '& (Ampersand)', 0, 2),
(8, '# (Hash)', 0, 2),
(9, 'Extern', 1, 3),
(10, 'Local', 0, 3),
(11, 'Static', 0, 3),
(12, 'Global', 0, 3),
(13, 'echo', 0, 4),
(14, 'write', 0, 4),
(15, 'print', 0, 4),
(16, 'Both (a) and (c)', 1, 4),
(17, '+ (plus)', 0, 5),
(18, '* (Asterisk)', 0, 5),
(19, '. (dot)', 1, 5),
(20, 'append()', 0, 5),
(21, 'Inbuilt constants', 0, 6),
(22, 'User-defined constants', 0, 6),
(23, 'Magic constants', 1, 6),
(24, 'Default constants', 0, 6),
(25, 'Create myFunction()', 0, 7),
(26, 'New_function myFunction()', 0, 7),
(27, 'function myFunction()', 1, 7),
(28, 'None of the above', 0, 7),
(29, 'The strcmp() function is used to compare the strings excluding case', 0, 8),
(30, 'The strcmp() function is used to compare the uppercase strings', 0, 8),
(31, 'The strcmp() function is used to compare the lowercase strings', 0, 8),
(32, 'The strcmp() function is used to compare the strings including case', 1, 8),
(33, 'php_info()', 0, 9),
(34, 'phpinfo()', 1, 9),
(35, 'info()', 0, 9),
(36, 'None of the above', 0, 9),
(37, 'createcookie()', 0, 10),
(38, 'makecookie()', 0, 10),
(39, 'setcookie()', 1, 10),
(40, 'None of the above', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `phpquestions`
--

CREATE TABLE `phpquestions` (
  `qid` int(11) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phpquestions`
--

INSERT INTO `phpquestions` (`qid`, `question`) VALUES
(1, 'Q1:PHP stands for -'),
(2, 'Q2:Variable name in PHP starts with -'),
(3, 'Q3:Which of the following is not a variable scope in PHP?'),
(4, 'Q4:Which of the following is used to display the output in PHP?'),
(5, 'Q5:Which of the following is used for concatenation in PHP?'),
(6, 'Q6:Which of the following starts with __ (double underscore) in PHP?'),
(7, 'Q7:Which of the following is the correct way to create a function in PHP?'),
(8, 'Q8:Which of the following is the correct use of the strcmp() function in PHP?'),
(9, 'Q9:Which of the following function displays the information about PHP and its configuration?'),
(10, 'Q10:Which of the following function is used to set cookie in PHP?');

-- --------------------------------------------------------

--
-- Table structure for table `pythonanswers`
--

CREATE TABLE `pythonanswers` (
  `ans_id` int(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` int(255) NOT NULL,
  `ans_options` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pythonanswers`
--

INSERT INTO `pythonanswers` (`ans_id`, `answer`, `is_correct`, `ans_options`) VALUES
(1, 'object-oriented programming', 0, 1),
(2, 'structured programming', 0, 1),
(3, 'functional programming', 0, 1),
(4, 'all of the mentioned', 1, 1),
(5, '.python', 0, 2),
(6, '.pl', 0, 2),
(7, '.py', 1, 2),
(8, '.p', 0, 2),
(9, 'Capitalized', 0, 3),
(10, 'lower case', 0, 3),
(11, 'UPPER CASE', 0, 3),
(12, 'None of the mentioned', 1, 3),
(13, '7', 1, 4),
(14, '2', 0, 4),
(15, '4', 0, 4),
(16, '1', 0, 4),
(17, 'print()', 1, 5),
(18, 'factorial()', 0, 5),
(19, 'seed()', 0, 5),
(20, 'sqrt()', 0, 5),
(21, 'Classes are real-world entities while objects are not real', 0, 6),
(22, 'Objects are real-world entities while classes are not real', 1, 6),
(23, 'Both objects and classes are real-world entities', 0, 6),
(24, 'All of the above', 0, 6),
(25, 'Object', 0, 7),
(26, 'Function', 1, 7),
(27, 'Attribute', 0, 7),
(28, 'Argument', 0, 7),
(29, 'a ^ b', 0, 8),
(30, 'a**b', 1, 8),
(31, 'a ^ ^ b', 0, 8),
(32, 'a ^ * b', 0, 8),
(33, 'Parentheses, Exponential, Multiplication, Division, Addition, Subtraction', 1, 9),
(34, 'Multiplication, Division, Addition, Subtraction, Parentheses, Exponential\r\n', 0, 9),
(35, 'Division, Multiplication, Addition, Subtraction, Parentheses, Exponential', 0, 9),
(36, 'Exponential, Parentheses, Multiplication, Division, Addition, Subtraction', 0, 9),
(37, 'Key', 0, 10),
(38, 'Indentation', 1, 10),
(39, 'Brackets', 0, 10),
(40, 'All of the mentioned', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pythonquestions`
--

CREATE TABLE `pythonquestions` (
  `qid` int(255) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pythonquestions`
--

INSERT INTO `pythonquestions` (`qid`, `question`) VALUES
(1, 'Q1:Which type of Programming does Python support?'),
(2, 'Q2:Which of the following is the correct extension of the Python file?'),
(3, 'Q3:All keywords in Python are in _________'),
(4, 'Q4:What will be the value of the following Python expression :- 4 + 3 % 5'),
(5, 'Q5:Which of the following functions is a built-in function in python?'),
(6, 'Q6:Which of the following statements is correct regarding the object-oriented programming concept in Python?'),
(7, 'Q7:What is the method inside the class in python language?'),
(8, 'Q8:Which of the following operators is the correct option for power(ab)?'),
(9, 'Q9:Which of the following precedence order is correct in Python?'),
(10, 'Q10:Which of the following is used to define a block of code in Python language?');

-- --------------------------------------------------------

--
-- Table structure for table `studentsregistrations`
--

CREATE TABLE `studentsregistrations` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentsregistrations`
--

INSERT INTO `studentsregistrations` (`id`, `name`, `email`, `password`, `date`, `time`) VALUES
(1, 'xyz', 'xyz@gmail.com', 'xyz', '13/12/2021', '12:10:29 PM');

-- --------------------------------------------------------

--
-- Table structure for table `studentsscored`
--

CREATE TABLE `studentsscored` (
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quiz_attempted` varchar(255) NOT NULL,
  `answercorrect` int(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentsscored`
--

INSERT INTO `studentsscored` (`user_id`, `name`, `quiz_attempted`, `answercorrect`, `date`, `time`) VALUES
(1, 'xyz', 'Python', 8, '13/12/2021', '12:11:11 PM'),
(2, 'xyz', 'Python', 7, '13/12/2021', '12:12:05 PM'),
(3, 'xyz', 'Python', 3, '13/12/2021', '07:19:07 PM'),
(4, 'xyz', 'Python', 9, '13/12/2021', '07:19:37 PM'),
(5, 'xyz', 'Python', 13, '13/12/2021', '07:20:16 PM'),
(6, 'xyz', 'Python', 9, '13/12/2021', '07:24:34 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cppanswers`
--
ALTER TABLE `cppanswers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `cppquestions`
--
ALTER TABLE `cppquestions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `cproganswers`
--
ALTER TABLE `cproganswers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `cprogquestions`
--
ALTER TABLE `cprogquestions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `cssanswers`
--
ALTER TABLE `cssanswers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `cssquestions`
--
ALTER TABLE `cssquestions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `dbmsanswers`
--
ALTER TABLE `dbmsanswers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `dbmsquestions`
--
ALTER TABLE `dbmsquestions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `htmlanswers`
--
ALTER TABLE `htmlanswers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `htmlquestions`
--
ALTER TABLE `htmlquestions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `javaanswers`
--
ALTER TABLE `javaanswers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `javaquestions`
--
ALTER TABLE `javaquestions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `javascptanswers`
--
ALTER TABLE `javascptanswers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `javascptquestions`
--
ALTER TABLE `javascptquestions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `phpanswers`
--
ALTER TABLE `phpanswers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `phpquestions`
--
ALTER TABLE `phpquestions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `pythonanswers`
--
ALTER TABLE `pythonanswers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `pythonquestions`
--
ALTER TABLE `pythonquestions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `studentsregistrations`
--
ALTER TABLE `studentsregistrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentsscored`
--
ALTER TABLE `studentsscored`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cppanswers`
--
ALTER TABLE `cppanswers`
  MODIFY `ans_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cppquestions`
--
ALTER TABLE `cppquestions`
  MODIFY `qid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cproganswers`
--
ALTER TABLE `cproganswers`
  MODIFY `ans_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cprogquestions`
--
ALTER TABLE `cprogquestions`
  MODIFY `qid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cssanswers`
--
ALTER TABLE `cssanswers`
  MODIFY `ans_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cssquestions`
--
ALTER TABLE `cssquestions`
  MODIFY `qid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dbmsanswers`
--
ALTER TABLE `dbmsanswers`
  MODIFY `ans_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `dbmsquestions`
--
ALTER TABLE `dbmsquestions`
  MODIFY `qid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `htmlanswers`
--
ALTER TABLE `htmlanswers`
  MODIFY `ans_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `htmlquestions`
--
ALTER TABLE `htmlquestions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `javaanswers`
--
ALTER TABLE `javaanswers`
  MODIFY `ans_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `javaquestions`
--
ALTER TABLE `javaquestions`
  MODIFY `qid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `javascptanswers`
--
ALTER TABLE `javascptanswers`
  MODIFY `ans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `javascptquestions`
--
ALTER TABLE `javascptquestions`
  MODIFY `qid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phpanswers`
--
ALTER TABLE `phpanswers`
  MODIFY `ans_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `phpquestions`
--
ALTER TABLE `phpquestions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pythonanswers`
--
ALTER TABLE `pythonanswers`
  MODIFY `ans_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pythonquestions`
--
ALTER TABLE `pythonquestions`
  MODIFY `qid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `studentsregistrations`
--
ALTER TABLE `studentsregistrations`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studentsscored`
--
ALTER TABLE `studentsscored`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

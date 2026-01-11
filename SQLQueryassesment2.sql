--create database assessment2

use assessment2

/**
 CREATE TABLE Users
 ( UserID INT PRIMARY KEY, UserName VARCHAR(50) NOT NULL, Email VARCHAR(100), DateJoined DATE, Location VARCHAR(50), Followers INT, Following INT, Bio VARCHAR(255), Verified BIT, AccountType VARCHAR(20), LastActive DATE, TotalPosts INT, Interests VARCHAR(100), Gender VARCHAR(10), IsActive BIT );
 **/
 /**
CREATE TABLE Posts 
( PostID INT PRIMARY KEY, UserID INT NOT NULL, PostDate DATE, Content VARCHAR(500), Likes INT, Shares INT, Comments INT, PostType VARCHAR(20), Hashtags VARCHAR(100), Reach INT, Impressions INT, Engagements INT, Location VARCHAR(50), Language VARCHAR(10), IsPublished BIT, FOREIGN KEY (UserID) REFERENCES Users(UserID) );
**/
/**
insert into Users values
(1, 'user_1', 'user_1@example.com', '2020-09-16', 'New York', 626, 712, 'Bio for user_1', 0, 'Personal', '2025-06-13', 87, 'Gaming,Sports', 'Female', 0),
(2, 'user_2', 'user_2@example.com', '2022-01-28', 'Dallas', 3030, 819, 'Bio for user_2', 1, 'Business', '2025-03-02', 36, 'Gaming,Sports', 'Female', 0),
(3, 'user_3', 'user_3@example.com', '2021-07-03', 'Chicago', 3596, 886, 'Bio for user_3', 0, 'Business', '2025-06-07', 386, 'Fashion,Food', 'Female', 1),
(4, 'user_4', 'user_4@example.com', '2020-10-02', 'Chicago', 548, 944, 'Bio for user_4', 0, 'Business', '2025-11-18', 148, 'Music,Art', 'Male', 1),
(5, 'user_5', 'user_5@example.com', '2021-10-26', 'Dallas', 1481, 789, 'Bio for user_5', 0, 'Personal', '2025-11-21', 226, 'Tech,Travel', 'Female', 0),
(6, 'user_6', 'user_6@example.com', '2022-01-22', 'Philadelphia', 2527, 978, 'Bio for user_6', 0, 'Personal', '2025-04-22', 385, 'Fashion,Food', 'Female', 0),
(7, 'user_7', 'user_7@example.com', '2021-07-30', 'San Jose', 909, 321, 'Bio for user_7', 1, 'Personal', '2025-04-27', 461, 'Health,Fitness', 'Female', 0),
(8, 'user_8', 'user_8@example.com', '2021-04-13', 'Dallas', 1920, 719, 'Bio for user_8', 0, 'Business', '2025-10-08', 48, 'Health,Fitness', 'Female', 1),
(9, 'user_9', 'user_9@example.com', '2021-01-18', 'San Jose', 521, 395, 'Bio for user_9', 1, 'Personal', '2025-09-28', 500, 'Music,Art', 'Male', 1),
(10, 'user_10', 'user_10@example.com', '2021-01-13', 'Los Angeles', 3372, 610, 'Bio for user_10', 0, 'Personal', '2025-08-29', 129, 'Fashion,Food', 'Female', 1),
(11, 'user_11', 'user_11@example.com', '2022-06-26', 'New York', 2092, 710, 'Bio for user_11', 1, 'Business', '2025-06-13', 353, 'Music,Art', 'Male', 1),
(12, 'user_12', 'user_12@example.com', '2020-07-22', 'San Antonio', 1625, 513, 'Bio for user_12', 1, 'Business', '2025-06-22', 84, 'Gaming,Sports', 'Female', 0),
(13, 'user_13', 'user_13@example.com', '2021-03-24', 'San Diego', 113, 62, 'Bio for user_13', 0, 'Business', '2025-07-17', 372, 'Fashion,Food', 'Male', 1),
(14, 'user_14', 'user_14@example.com', '2021-02-06', 'Phoenix', 2874, 478, 'Bio for user_14', 0, 'Business', '2025-05-10', 406, 'Fashion,Food', 'Male', 1),
(15, 'user_15', 'user_15@example.com', '2020-01-09', 'Phoenix', 2756, 152, 'Bio for user_15', 1, 'Personal', '2025-11-22', 283, 'Gaming,Sports', 'Female', 0),
(16, 'user_16', 'user_16@example.com', '2022-04-04', 'San Antonio', 3210, 478, 'Bio for user_16', 0, 'Business', '2025-02-18', 143, 'Health,Fitness', 'Male', 0),
(17, 'user_17', 'user_17@example.com', '2020-12-07', 'San Antonio', 908, 190, 'Bio for user_17', 0, 'Personal', '2025-08-01', 235, 'Music,Art', 'Male', 0),
(18, 'user_18', 'user_18@example.com', '2021-03-12', 'Phoenix', 616, 293, 'Bio for user_18', 1, 'Personal', '2025-01-28', 293, 'Music,Art', 'Female', 1),
(19, 'user_19', 'user_19@example.com', '2021-08-06', 'Philadelphia', 4294, 194, 'Bio for user_19', 1, 'Personal', '2025-11-04', 466, 'Health,Fitness', 'Male', 0),
(20, 'user_20', 'user_20@example.com', '2020-07-31', 'Phoenix', 721, 243, 'Bio for user_20', 1, 'Personal', '2025-07-17', 499, 'Health,Fitness', 'Female', 0),
(21, 'user_21', 'user_21@example.com', '2021-01-05', 'Dallas', 4876, 52, 'Bio for user_21', 1, 'Personal', '2025-01-11', 415, 'Fashion,Food', 'Female', 1),
(22, 'user_22', 'user_22@example.com', '2020-03-07', 'Dallas', 1470, 772, 'Bio for user_22', 1, 'Business', '2025-02-28', 442, 'Music,Art', 'Male', 0),
(23, 'user_23', 'user_23@example.com', '2020-02-24', 'Dallas', 3175, 932, 'Bio for user_23', 1, 'Business', '2025-01-29', 420, 'Health,Fitness', 'Male', 1),
(24, 'user_24', 'user_24@example.com', '2021-09-10', 'Houston', 1536, 720, 'Bio for user_24', 0, 'Business', '2025-02-20', 365, 'Fashion,Food', 'Male', 0),
(25, 'user_25', 'user_25@example.com', '2021-01-07', 'Dallas', 3510, 494, 'Bio for user_25', 1, 'Personal', '2025-08-21', 58, 'Health,Fitness', 'Male', 0),
(26, 'user_26', 'user_26@example.com', '2022-04-09', 'Los Angeles', 2063, 922, 'Bio for user_26', 1, 'Personal', '2025-08-11', 293, 'Health,Fitness', 'Male', 0),
(27, 'user_27', 'user_27@example.com', '2022-09-20', 'Dallas', 484, 623, 'Bio for user_27', 0, 'Business', '2025-09-24', 375, 'Fashion,Food', 'Male', 1),
(28, 'user_28', 'user_28@example.com', '2022-09-11', 'Phoenix', 1185, 608, 'Bio for user_28', 1, 'Personal', '2025-02-28', 34, 'Tech,Travel', 'Female', 1),
(29, 'user_29', 'user_29@example.com', '2020-09-19', 'New York', 996, 867, 'Bio for user_29', 1, 'Business', '2025-07-04', 276, 'Fashion,Food', 'Male', 0),
(30, 'user_30', 'user_30@example.com', '2021-04-26', 'Dallas', 3018, 494, 'Bio for user_30', 0, 'Personal', '2025-06-02', 201, 'Music,Art', 'Male', 0),
(31, 'user_31', 'user_31@example.com', '2020-03-22', 'New York', 3247, 66, 'Bio for user_31', 0, 'Personal', '2025-05-02', 453, 'Fashion,Food', 'Female', 0),
(32, 'user_32', 'user_32@example.com', '2020-08-03', 'San Diego', 3744, 765, 'Bio for user_32', 1, 'Personal', '2025-01-03', 261, 'Music,Art', 'Female', 1),
(33, 'user_33', 'user_33@example.com', '2022-06-06', 'San Diego', 651, 650, 'Bio for user_33', 0, 'Business', '2025-05-18', 46, 'Gaming,Sports', 'Female', 1),
(34, 'user_34', 'user_34@example.com', '2020-11-24', 'San Diego', 2487, 576, 'Bio for user_34', 0, 'Business', '2025-02-18', 174, 'Gaming,Sports', 'Male', 0),
(35, 'user_35', 'user_35@example.com', '2022-06-10', 'San Jose', 4159, 233, 'Bio for user_35', 0, 'Business', '2025-05-31', 16, 'Gaming,Sports', 'Female', 0),
(36, 'user_36', 'user_36@example.com', '2022-04-17', 'Philadelphia', 4573, 62, 'Bio for user_36', 0, 'Business', '2025-06-11', 192, 'Music,Art', 'Male', 1),
(37, 'user_37', 'user_37@example.com', '2021-10-29', 'Houston', 4195, 856, 'Bio for user_37', 1, 'Business', '2025-02-08', 433, 'Music,Art', 'Male', 1),
(38, 'user_38', 'user_38@example.com', '2020-04-24', 'San Antonio', 4470, 867, 'Bio for user_38', 1, 'Business', '2025-03-20', 170, 'Fashion,Food', 'Male', 0),
(39, 'user_39', 'user_39@example.com', '2020-10-01', 'Chicago', 703, 404, 'Bio for user_39', 1, 'Personal', '2025-02-12', 216, 'Music,Art', 'Female', 1),
(40, 'user_40', 'user_40@example.com', '2020-03-01', 'San Jose', 2705, 746, 'Bio for user_40', 0, 'Personal', '2025-10-29', 337, 'Music,Art', 'Male', 1),
(41, 'user_41', 'user_41@example.com', '2021-02-27', 'San Antonio', 656, 741, 'Bio for user_41', 1, 'Business', '2025-08-07', 211, 'Health,Fitness', 'Male', 0),
(42, 'user_42', 'user_42@example.com', '2021-05-18', 'Phoenix', 3545, 689, 'Bio for user_42', 0, 'Business', '2025-02-13', 179, 'Tech,Travel', 'Male', 1),
(43, 'user_43', 'user_43@example.com', '2022-03-26', 'San Antonio', 3598, 590, 'Bio for user_43', 1, 'Business', '2025-05-13', 430, 'Tech,Travel', 'Male', 0),
(44, 'user_44', 'user_44@example.com', '2021-02-17', 'San Jose', 3330, 202, 'Bio for user_44', 0, 'Personal', '2025-02-19', 347, 'Fashion,Food', 'Male', 0),
(45, 'user_45', 'user_45@example.com', '2020-09-19', 'Philadelphia', 3392, 193, 'Bio for user_45', 0, 'Business', '2025-08-01', 138, 'Fashion,Food', 'Male', 0),
(46, 'user_46', 'user_46@example.com', '2020-07-04', 'Philadelphia', 2095, 819, 'Bio for user_46', 1, 'Business', '2025-02-09', 318, 'Tech,Travel', 'Female', 0),
(47, 'user_47', 'user_47@example.com', '2020-11-16', 'Chicago', 4521, 405, 'Bio for user_47', 0, 'Business', '2025-12-19', 192, 'Fashion,Food', 'Male', 1),
(48, 'user_48', 'user_48@example.com', '2022-03-19', 'Chicago', 2156, 248, 'Bio for user_48', 1, 'Personal', '2025-08-20', 12, 'Gaming,Sports', 'Male', 0),
(49, 'user_49', 'user_49@example.com', '2020-03-14', 'Dallas', 4608, 372, 'Bio for user_49', 0, 'Personal', '2025-11-26', 432, 'Health,Fitness', 'Female', 1),
(50, 'user_50', 'user_50@example.com', '2020-02-20', 'Los Angeles', 2023, 186, 'Bio for user_50', 1, 'Personal', '2025-05-15', 338, 'Gaming,Sports', 'Male', 0),
(51, 'user_51', 'user_51@example.com', '2021-02-16', 'Philadelphia', 1163, 220, 'Bio for user_51', 0, 'Personal', '2025-06-04', 220, 'Gaming,Sports', 'Male', 0),
(52, 'user_52', 'user_52@example.com', '2020-04-24', 'Chicago', 660, 155, 'Bio for user_52', 1, 'Personal', '2025-07-09', 267, 'Tech,Travel', 'Male', 0),
(53, 'user_53', 'user_53@example.com', '2022-09-05', 'Philadelphia', 2065, 455, 'Bio for user_53', 1, 'Business', '2025-10-29', 354, 'Tech,Travel', 'Female', 1),
(54, 'user_54', 'user_54@example.com', '2021-03-15', 'Los Angeles', 1472, 194, 'Bio for user_54', 1, 'Personal', '2025-06-14', 162, 'Health,Fitness', 'Female', 1),
(55, 'user_55', 'user_55@example.com', '2022-08-04', 'San Jose', 4506, 392, 'Bio for user_55', 0, 'Business', '2025-03-05', 366, 'Health,Fitness', 'Male', 1),
(56, 'user_56', 'user_56@example.com', '2020-01-10', 'Dallas', 2164, 151, 'Bio for user_56', 1, 'Business', '2025-01-22', 345, 'Fashion,Food', 'Male', 0),
(57, 'user_57', 'user_57@example.com', '2022-06-27', 'Phoenix', 3427, 75, 'Bio for user_57', 0, 'Business', '2025-04-14', 317, 'Gaming,Sports', 'Female', 0),
(58, 'user_58', 'user_58@example.com', '2021-08-09', 'Philadelphia', 4854, 529, 'Bio for user_58', 1, 'Personal', '2025-06-13', 42, 'Music,Art', 'Male', 0),
(59, 'user_59', 'user_59@example.com', '2022-09-05', 'San Diego', 1827, 310, 'Bio for user_59', 0, 'Personal', '2025-06-20', 209, 'Tech,Travel', 'Female', 1),
(60, 'user_60', 'user_60@example.com', '2022-01-27', 'New York', 2853, 247, 'Bio for user_60', 0, 'Business', '2025-06-17', 305, 'Gaming,Sports', 'Female', 0),
(61, 'user_61', 'user_61@example.com', '2020-08-12', 'New York', 4467, 122, 'Bio for user_61', 0, 'Personal', '2025-02-26', 344, 'Tech,Travel', 'Male', 1),
(62, 'user_62', 'user_62@example.com', '2021-11-01', 'Philadelphia', 2830, 655, 'Bio for user_62', 0, 'Personal', '2025-07-03', 35, 'Gaming,Sports', 'Male', 1),
(63, 'user_63', 'user_63@example.com', '2020-01-14', 'Phoenix', 4274, 94, 'Bio for user_63', 1, 'Business', '2025-06-21', 277, 'Music,Art', 'Female', 0),
(64, 'user_64', 'user_64@example.com', '2021-10-14', 'San Diego', 546, 275, 'Bio for user_64', 0, 'Personal', '2025-10-10', 493, 'Gaming,Sports', 'Female', 0),
(65, 'user_65', 'user_65@example.com', '2021-02-01', 'Houston', 4624, 197, 'Bio for user_65', 0, 'Business', '2025-11-30', 273, 'Music,Art', 'Female', 1);
**/
/**
insert into Posts values
(101, 12, '2025-01-27', 'Content for post 101', 437, 71, 176, 'Text', '#Music,#Art', 18996, 19358, 684, 'Dallas', 'de', 1),
(102, 61, '2025-01-24', 'Content for post 102', 403, 416, 83, 'Video', '#Tech,#Art', 7945, 20675, 902, 'Houston', 'es', 1),
(103, 2, '2025-07-10', 'Content for post 103', 6, 258, 3, 'Image', '#Gaming,#Style', 2169, 12044, 267, 'Chicago', 'en', 1),
(104, 35, '2025-04-26', 'Content for post 104', 638, 491, 91, 'Video', '#AI,#Fun', 5246, 23613, 1220, 'Houston', 'de', 1),
(105, 2, '2025-12-22', 'Content for post 105', 217, 433, 142, 'Video', '#Gaming,#Fun', 6002, 6352, 792, 'San Antonio', 'de', 1),
(106, 47, '2025-10-21', 'Content for post 106', 495, 36, 42, 'Image', '#Health,#Style', 3635, 12020, 573, 'San Jose', 'es', 1),
(107, 61, '2025-09-17', 'Content for post 107', 606, 346, 171, 'Text', '#Style,#Art', 10886, 10678, 1123, 'New York', 'de', 1),
(108, 27, '2025-02-21', 'Content for post 108', 530, 227, 114, 'Video', '#Fun,#AI', 17863, 18456, 871, 'Los Angeles', 'de', 0),
(109, 5, '2025-05-07', 'Content for post 109', 143, 496, 29, 'Video', '#Style,#Fitness', 12394, 6898, 668, 'Phoenix', 'en', 0),
(110, 62, '2025-03-06', 'Content for post 110', 658, 126, 16, 'Text', '#Health,#Style', 8051, 19500, 800, 'San Diego', 'en', 0),
(111, 47, '2025-08-07', 'Content for post 111', 643, 307, 16, 'Video', '#Tech,#Style', 18163, 4079, 966, 'Los Angeles', 'es', 0),
(112, 43, '2025-07-03', 'Content for post 112', 889, 73, 83, 'Image', '#Fitness,#Fun', 12195, 21607, 1045, 'Philadelphia', 'fr', 0),
(113, 6, '2025-03-16', 'Content for post 113', 894, 280, 73, 'Video', '#Tech,#Style', 6043, 5501, 1247, 'Philadelphia', 'de', 1),
(114, 19, '2025-05-09', 'Content for post 114', 950, 352, 172, 'Video', '#Style,#Tech', 15170, 12539, 1474, 'Houston', 'en', 0),
(115, 1, '2025-05-25', 'Content for post 115', 762, 114, 182, 'Image', '#Health,#AI', 9111, 16814, 1058, 'San Antonio', 'en', 0),
(116, 4, '2025-04-19', 'Content for post 116', 391, 155, 116, 'Video', '#Music,#Fun', 15496, 9083, 662, 'Houston', 'fr', 0),
(117, 22, '2025-09-05', 'Content for post 117', 464, 59, 65, 'Video', '#Gaming,#Tech', 5253, 12089, 588, 'San Antonio', 'en', 0),
(118, 32, '2025-02-20', 'Content for post 118', 905, 227, 33, 'Image', '#Health,#Art', 13326, 20885, 1165, 'Houston', 'de', 1),
(119, 11, '2025-04-05', 'Content for post 119', 797, 191, 178, 'Video', '#Music,#Tech', 3284, 3332, 1166, 'Los Angeles', 'es', 1),
(120, 23, '2025-04-08', 'Content for post 120', 407, 302, 166, 'Video', '#Gaming,#Fitness', 8159, 3598, 875, 'Phoenix', 'fr', 1),
(121, 3, '2025-10-03', 'Content for post 121', 455, 305, 85, 'Video', '#Fun,#Style', 5808, 18437, 845, 'Phoenix', 'es', 1),
(122, 56, '2025-03-23', 'Content for post 122', 227, 338, 32, 'Image', '#Fitness,#Tech', 11157, 2767, 597, 'New York', 'de', 0),
(123, 9, '2025-12-07', 'Content for post 123', 254, 475, 63, 'Image', '#Fitness,#Fun', 11679, 13507, 792, 'Los Angeles', 'en', 0),
(124, 60, '2025-11-06', 'Content for post 124', 294, 147, 167, 'Video', '#Fashion,#AI', 15480, 18599, 608, 'San Jose', 'de', 0),
(125, 22, '2025-01-28', 'Content for post 125', 430, 261, 64, 'Video', '#Fitness,#Gaming', 6733, 15348, 755, 'Chicago', 'de', 0),
(126, 25, '2025-04-03', 'Content for post 126', 747, 379, 86, 'Text', '#Fun,#Health', 19286, 6295, 1212, 'San Antonio', 'es', 0),
(127, 44, '2025-07-18', 'Content for post 127', 338, 260, 139, 'Text', '#Gaming,#AI', 7138, 22344, 737, 'Dallas', 'de', 1),
(128, 54, '2025-03-29', 'Content for post 128', 243, 371, 129, 'Text', '#AI,#Fitness', 3106, 8990, 743, 'Los Angeles', 'en', 1),
(129, 11, '2025-03-29', 'Content for post 129', 142, 199, 20, 'Text', '#Fun,#Fitness', 1480, 13957, 361, 'Dallas', 'es', 1),
(130, 3, '2025-07-20', 'Content for post 130', 318, 471, 132, 'Image', '#Fitness,#Music', 8431, 18406, 921, 'San Jose', 'fr', 0),
(131, 15, '2025-11-02', 'Content for post 131', 952, 483, 171, 'Image', '#Art,#Fun', 19643, 3828, 1606, 'Chicago', 'de', 1),
(132, 62, '2025-02-24', 'Content for post 132', 915, 34, 157, 'Image', '#Style,#Fitness', 10676, 22219, 1106, 'Dallas', 'fr', 1),
(133, 31, '2025-07-30', 'Content for post 133', 544, 219, 189, 'Image', '#Art,#Gaming', 7541, 18173, 952, 'San Jose', 'fr', 0),
(134, 8, '2025-12-09', 'Content for post 134', 982, 299, 95, 'Text', '#Gaming,#Style', 4568, 20073, 1376, 'Dallas', 'de', 1),
(135, 1, '2025-03-12', 'Content for post 135', 476, 109, 164, 'Text', '#Fitness,#Health', 18115, 11165, 749, 'Houston', 'fr', 1),
(136, 44, '2025-02-23', 'Content for post 136', 748, 423, 73, 'Video', '#Fun,#Style', 10886, 18836, 1244, 'Dallas', 'en', 1),
(137, 53, '2025-04-27', 'Content for post 137', 575, 456, 139, 'Text', '#Style,#Gaming', 10600, 15983, 1170, 'Chicago', 'es', 1),
(138, 53, '2025-01-02', 'Content for post 138', 928, 28, 55, 'Text', '#Gaming,#Fitness', 10159, 24633, 1011, 'San Jose', 'de', 0),
(139, 7, '2025-11-12', 'Content for post 139', 308, 366, 51, 'Video', '#Gaming,#Fitness', 6140, 18231, 725, 'Dallas', 'de', 1),
(140, 22, '2025-10-16', 'Content for post 140', 914, 324, 166, 'Text', '#Tech,#Fun', 7454, 5210, 1404, 'Los Angeles', 'en', 1),
(141, 55, '2025-06-17', 'Content for post 141', 573, 355, 51, 'Video', '#Art,#Tech', 16538, 2489, 979, 'San Diego', 'de', 0),
(142, 52, '2025-12-31', 'Content for post 142', 386, 169, 142, 'Image', '#Health,#Style', 4030, 15839, 697, 'Philadelphia', 'de', 0),
(143, 62, '2025-04-08', 'Content for post 143', 416, 98, 30, 'Text', '#Style,#Fun', 1268, 19191, 544, 'Philadelphia', 'en', 0),
(144, 49, '2025-05-26', 'Content for post 144', 939, 268, 27, 'Video', '#Tech,#Fitness', 5135, 15596, 1234, 'San Diego', 'fr', 1),
(145, 38, '2025-10-10', 'Content for post 145', 423, 356, 39, 'Video', '#Gaming,#Music', 4353, 17899, 818, 'Dallas', 'fr', 1),
(146, 56, '2025-08-22', 'Content for post 146', 376, 215, 121, 'Video', '#Art,#AI', 9088, 2273, 712, 'Phoenix', 'es', 1),
(147, 6, '2025-10-22', 'Content for post 147', 412, 311, 27, 'Text', '#Style,#Gaming', 11943, 9282, 750, 'San Jose', 'en', 1),
(148, 44, '2025-08-26', 'Content for post 148', 967, 72, 140, 'Image', '#Art,#Fashion', 15314, 17432, 1179, 'San Antonio', 'en', 1),
(149, 45, '2025-10-10', 'Content for post 149', 30, 366, 30, 'Video', '#Fitness,#Fashion', 19528, 20959, 426, 'Philadelphia', 'es', 1),
(150, 36, '2025-03-21', 'Content for post 150', 822, 384, 137, 'Image', '#Gaming,#Fitness', 15121, 6789, 1343, 'Philadelphia', 'es', 1),
(151, 8, '2025-09-11', 'Content for post 151', 989, 124, 174, 'Image', '#Fitness,#Health', 5306, 8331, 1287, 'Chicago', 'en', 0),
(152, 9, '2025-01-01', 'Content for post 152', 263, 163, 100, 'Image', '#Fitness,#Music', 7379, 13795, 526, 'Los Angeles', 'en', 0),
(153, 48, '2025-02-08', 'Content for post 153', 676, 366, 5, 'Video', '#AI,#Health', 8075, 10547, 1047, 'San Diego', 'es', 1),
(154, 6, '2025-12-14', 'Content for post 154', 258, 71, 87, 'Image', '#Fun,#Music', 5978, 21747, 416, 'Philadelphia', 'en', 1),
(155, 52, '2025-10-31', 'Content for post 155', 627, 186, 82, 'Image', '#Fashion,#Fun', 3875, 10469, 895, 'New York', 'en', 1),
(156, 34, '2025-12-11', 'Content for post 156', 619, 15, 100, 'Text', '#Fitness,#Fashion', 12403, 9796, 734, 'Los Angeles', 'en', 1),
(157, 44, '2025-12-27', 'Content for post 157', 389, 100, 195, 'Text', '#AI,#Fashion', 11692, 12330, 684, 'San Jose', 'en', 1),
(158, 12, '2025-06-03', 'Content for post 158', 881, 163, 110, 'Image', '#Health,#Art', 4710, 8585, 1154, 'San Jose', 'es', 1),
(159, 52, '2025-11-27', 'Content for post 159', 411, 429, 160, 'Text', '#AI,#Art', 16065, 5106, 1000, 'Dallas', 'es', 1),
(160, 9, '2025-01-21', 'Content for post 160', 17, 290, 72, 'Text', '#Tech,#Music', 17713, 5534, 379, 'Houston', 'en', 0),
(161, 56, '2025-06-19', 'Content for post 161', 868, 178, 79, 'Text', '#Fitness,#Fun', 5562, 18229, 1125, 'Houston', 'fr', 0),
(162, 21, '2025-02-03', 'Content for post 162', 755, 11, 50, 'Text', '#Fashion,#Fitness', 7872, 8848, 816, 'Houston', 'fr', 0),
(163, 18, '2025-08-09', 'Content for post 163', 709, 68, 25, 'Image', '#Style,#Tech', 4224, 10542, 802, 'Dallas', 'en', 0),
(164, 47, '2025-07-31', 'Content for post 164', 421, 410, 118, 'Video', '#AI,#Gaming', 1968, 14574, 949, 'New York', 'es', 0),
(165, 55, '2025-09-29', 'Content for post 165', 802, 416, 12, 'Text', '#Style,#Tech', 3820, 15579, 1230, 'Phoenix', 'fr', 0);


**/

select top 1 * from Posts
select top 1 * from Users

--1. find all the users from newyork who are varified

select  *   from Users where Location = 'New York'  and Verified = 1

--2. show users name and their post content

select U.UserName,P.Content   from  Users  U 
inner join
Posts P  on P.UserID = U.UserID

--3. add a column lastlogin to user table

alter table Users add  lastlogin  datetime

--4. calculate average likes per post for each post type

select PostID, AVG(Likes) as avg_likes from Posts group by PostID 

--5. show the users who have posted more than 10 times

select UserID,count(PostID) as postcount      from Posts group by UserID having count(PostID) > 3

select U.UserName , count(p.Shares) as postcount   from Posts p 

right join 

Users U  on p.UserID = U.UserID

group by U.UserName having count(p.Shares) > 10


--6 show the top 5 most active users by followers

--7. list the first 10 useras who joined the platform

select top 10 UserName,DateJoined from Users order by DateJoined ASC;


-- 8. Display top 2 posts with the highest reach


select top 2 PostID,reach from Posts order by reach desc

-- change the data type of BIO to varchar(500) in users table 

alter table Users alter column BIO varchar(500) 

--11. remove the column 'LastLogin' from the users table 

alter table Users Drop column LastLogin

--12. get all posts published in 'EN' language also posted in 'los angels'

select top 1 * from Posts

select *  from Posts  where Language = 'EN' and Location = 'los angels'

/**

DCL data control language
these commands are used to control priviledges in database
there are two types of DCL commands grant and revoke

grant--

this is used to grant permisions to a user to perform perticular object

normally DBA will take care of these command

Syntax for grant
**/
grant priviledge list
on OBJECT_NAME
TO USER_NAME;

/**

revoke 

this command is use to take permission or access back from the user

syntax

**/

revoke priviledge_list
on object_name
from user_name

--privilege list exe,update

--restriction from data access 
--ensure security in DB for multiple users in the database
--prevent other users to make changes in the database who have no access 

-- disadvantages

--limiteted functionality no data handling























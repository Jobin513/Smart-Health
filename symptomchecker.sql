CREATE TABLE `users` (
  `userID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` char(45) NOT NULL,
  `password` char(45) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `cpassword` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE symptoms (
    id INT PRIMARY KEY,
    symptom_name VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE diseases (
    id INT PRIMARY KEY,
    disease_name VARCHAR(50) NOT NULL UNIQUE,
    probability DECIMAL(10, 5)     
);
CREATE TABLE symptoms_disease (
    id INT AUTO_INCREMENT PRIMARY KEY,
    symptom_id INT,
    disease_id INT,
    FOREIGN KEY (symptom_id) REFERENCES symptoms(id),
    FOREIGN KEY (disease_id) REFERENCES diseases(id)
);
CREATE TABLE `users` (
  `userID` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `username` char(45) NOT NULL,
  `password` char(45) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `cpassword` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE symptoms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    symptom_name VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE diseases (
    id INT AUTO_INCREMENT PRIMARY KEY,
    disease_name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT,        
    treatment TEXT          
);
CREATE TABLE symptoms_disease (
    id INT AUTO_INCREMENT PRIMARY KEY,
    symptom_id INT,
    disease_id INT,
    probability DECIMAL(5, 2), --Probability = (Number of times symptom appears with the disease) / (Total number of cases for that disease)
    FOREIGN KEY (symptom_id) REFERENCES symptoms(id),
    FOREIGN KEY (disease_id) REFERENCES diseases(id)
);
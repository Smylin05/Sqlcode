CREATE TABLE Patients (
    patientId INT  PRIMARY KEY,
    firstName VARCHAR(60) NOT NULL,
    lastName VARCHAR(60) NOT NULL,
    dateOfBirth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    contactNumber VARCHAR(20) NOT NULL,
	Address VARCHAR(50)
);

CREATE TABLE Doctors (
    doctorId INT  PRIMARY KEY ,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    specialization VARCHAR(100) NOT NULL,
    contactNumber VARCHAR(15) NOT NULL
);

CREATE TABLE Appointments (
    appointmentId INT  PRIMARY KEY,
    patientId INT NOT NULL,
    doctorId INT NOT NULL,
    appointmentDate DATETIME NOT NULL,
    description TEXT ,
    FOREIGN KEY (patientId) REFERENCES Patients(patientId),
    FOREIGN KEY (doctorId) REFERENCES Doctors(doctorId)
);

INSERT INTO Patients VALUES
(1,'Christabell', 'Smylin', '1980-05-15', 'Male', '12344947383','Chennai'),
(2,'John', 'Joseph', '1990-08-22', 'Male', '5663722882','Bangalore'),
(3,'Priya','Ram','2000-08-30','Female','982910727','Hyderabad'),
(4,'Rubina','Sweetlin','2000-02-10','Female','982910745','Chennai'),
(5,'Riya','Padma','2000-08-30','Female','982910727','Kerala');

INSERT INTO Doctors  VALUES
(101,'Alice', 'Williams', 'Cardiology', '9456773892'),
(102,'Bob', 'Miller', 'Dermatology', '9839479392'),
(103,'Charlie', 'Brown', 'Neurology', '822991910'),
(104,'Peter','Mani','Cardiology','673882828');

INSERT INTO Appointments 
VALUES 
    (1, 1,101,'2024-05-20 10:00:00', 'Routine check-up'),
    (2,2,102, '2024-05-22 14:30:00', 'Follow-up appointment'),
    (3, 3,103,'2024-05-25 11:15:00','Routine check-up'),
	(4,4,104,'2024-05-25 11:15:00','Follow-up Appointment');




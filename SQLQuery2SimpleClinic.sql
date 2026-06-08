create Database SimpleClinic;
use SimpleClinic;




create table Patient(
PatientID INT Primary Key ,
PatientName varchar(50) Not null,
PatientAddress varchar(50),
varcharDateOfBirth Date not null,
PatientGender char(1) not null,
PatientPhoneNumber varchar(20),
PatientEmail varchar(30)
);

create Table Doctor(
DoctorID int Primary key,
DoctorName varchar(50)NOT NULL,
DoctorSpecilization varchar(30)NOT NULL,
DoctorDateOfBirth Date NOT NULL,
DoctorGender char(1) NOT NULL,
DoctorPhoneNumber varchar(20),
DoctorAddress varchar(50),
DoctorEmail varchar(30)
);

create table Appointment(
AppointmentID INT Primary Key,
AppointmentTimeAndDate DateTime NOT NULL,
AppointmentStatus varchar(30) NOT NULL,

    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,

Foreign Key (PatientID)References Patient(PatientID),
Foreign Key(DoctorID)References Doctor(DoctorID)

);


create table MedicalRecord(
MedicalRecordID int Primary Key,
Diagnosis varchar(50) NOT NULL,
DescriptionOfVisit varchar(200) NOT NULL,
AdditionalNotes varchar(200),

AppointmentID int unique,

foreign Key (AppointmentID)references Appointment(AppointmentID)

);


create table Payment(
PaymentID INT PRIMARY KEY,
PaymentDate Date NOT NULL,
PaymentMethod varchar(20)NOT NULL,
PaymentAmountPaid decimal(10,2)NOT NULL,
AdditionalNotes TEXT,
AppointmentID INT NOT NULL UNIQUE
foreign Key (AppointmentID)references Appointment(AppointmentID)


);


create Table Prescription(
PrescriptionID INT PRIMARY KEY,
PrescriptionDosage varchar(50)NOT NULL,
StartDate date NOT NULL,
EndDate date NOT NULL,
PrescriptionFrequency varchar(50)NOT NULL,
SpecialInstructions varchar(300),
MedicationName varchar(50)NOT NULL,

MedicalRecordID INT NOT NULL UNIQUE,
Foreign Key (MedicalRecordID)References MedicalRecord(MedicalRecordID)

);




-------------------------------------------------------

INSERT INTO Doctor (DoctorID, DoctorName, DoctorSpecilization, DoctorDateOfBirth, DoctorGender, DoctorPhoneNumber, DoctorAddress, DoctorEmail) VALUES
(1, 'Dr. Ahmed Ezzat', 'Cardiology', '1975-03-12', 'M', '01012345678', 'Makram Ebeid, Nasr City', 'a.ezzat@clinic.com'),
(2, 'Dr. Mona Radwan', 'Neurology', '1980-06-15', 'F', '01123456789', 'Smouha, Alexandria', 'm.radwan@clinic.com'),
(3, 'Dr. Youssef Kamal', 'Pediatrics', '1982-08-22', 'M', '01234567890', 'Mohandeseen, Giza', 'y.kamal@clinic.com'),
(4, 'Dr. Sarah Ibrahim', 'Oncology', '1978-11-05', 'F', '01545678901', 'El-Maadi, Cairo', 's.ibrahim@clinic.com'),
(5, 'Dr. Mahmoud Fathy', 'Orthopedics', '1985-02-18', 'M', '01098765432', 'City Center, Qena', 'm.fathy@clinic.com'),
(6, 'Dr. Noha Mostafa', 'Dermatology', '1990-09-30', 'F', '01187654321', 'Ramsis St, Cairo', 'n.mostafa@clinic.com'),
(7, 'Dr. Tarek Omar', 'Psychiatry', '1970-12-12', 'M', '01276543210', 'Zamalek, Cairo', 't.omar@clinic.com'),
(8, 'Dr. Rania Saeed', 'General Practice', '1988-04-25', 'F', '01565432109', 'Al-Galaa St, Assiut', 'r.saeed@clinic.com'),
(9, 'Dr. Khaled Samir', 'Surgery', '1972-07-08', 'M', '01011223344', 'Sidi Bishr, Alexandria', 'k.samir@clinic.com'),
(10, 'Dr. Hoda Magdy', 'Internal Medicine', '1981-01-19', 'F', '01122334455', 'Television St, Luxor', 'h.magdy@clinic.com');



INSERT INTO Patient (PatientID, PatientName, PatientAddress, varcharDateOfBirth, PatientGender, PatientPhoneNumber, PatientEmail) VALUES
(1, 'Ali Hassan', 'Dokki, Giza', '1990-05-14', 'M', '01022334455', 'ali.hassan@gmail.com'),
(2, 'Fatima Ali', 'Nasr City, Cairo', '1985-11-20', 'F', '01133445566', 'fatima99@yahoo.com'),
(3, 'Omar Sayed', 'Luxor Temple St, Luxor', '1978-02-10', 'M', '01244556677', 'omar.sayed@hotmail.com'),
(4, 'Aya Mahmoud', 'Mansoura, Dakahlia', '1995-08-30', 'F', '01555667788', 'aya_m@gmail.com'),
(5, 'Hassan Tarek', 'Sohag City', '1982-12-05', 'M', '01066778899', 'h.tarek@gmail.com'),
(6, 'Mariam Wael', 'Qena City, Qena', '2000-01-18', 'F', '01177889900', 'mariam.w@outlook.com'),
(7, 'Khaled Nabil', 'Asyut City', '1970-07-25', 'M', '01288990011', 'k.nabil@yahoo.com'),
(8, 'Salma Yasser', 'Heliopolis, Cairo', '1992-04-12', 'F', '01599001122', 'salma.y@gmail.com'),
(9, 'Mostafa Adel', 'Tanta, Gharbia', '1988-09-08', 'M', '01010101010', 'mostafa.a@gmail.com'),
(10, 'Nourhan Fathy', 'Zifta, Gharbia', '1998-03-22', 'F', '01120202020', 'nourhan.f@hotmail.com'),
(11, 'Ibrahim Saad', 'Aswan City', '1965-06-15', 'M', '01230303030', 'ibrahim.saad@gmail.com'),
(12, 'Heba Galal', 'Shibin El Kom', '1980-10-10', 'F', '01540404040', 'heba.g@yahoo.com'),
(13, 'Amr Diab', 'Port Said', '1975-01-01', 'M', '01050505050', 'amr.diab@gmail.com'),
(14, 'Dina Emad', 'Ismailia', '1993-05-19', 'F', '01160606060', 'dina.e@outlook.com'),
(15, 'Tamer Hosny', 'Suez', '1987-11-11', 'M', '01270707070', 'tamer.h@gmail.com'),
(16, 'Yasmine Sabry', 'Alexandria', '1990-02-28', 'F', '01580808080', 'yasmine.s@yahoo.com'),
(17, 'Mahmoud El-Sayed', 'Banha, Qalyubia', '1984-08-08', 'M', '01090909090', 'm.elsayed@gmail.com'),
(18, 'Randa Fahmy', 'Fayoum', '1996-12-12', 'F', '01112121212', 'randa.f@gmail.com'),
(19, 'Sami Youssef', 'Minya', '1979-04-04', 'M', '01223232323', 'sami.y@hotmail.com'),
(20, 'Nadia Lutfi', 'Beni Suef', '1960-07-07', 'F', '01534343434', 'nadia.l@gmail.com'),
(21, 'Wael Gomaa', 'Qena City, Qena', '1985-09-09', 'M', '01045454545', 'wael.g@yahoo.com'),
(22, 'Maha Ahmed', 'Maadi, Cairo', '1991-03-03', 'F', '01156565656', 'maha.a@gmail.com'),
(23, 'Kamal El-Din', 'Giza Square', '1972-06-06', 'M', '01267676767', 'kamal.e@outlook.com'),
(24, 'Sherine Abdel Wahab', 'Zamalek, Cairo', '1986-10-10', 'F', '01578787878', 'sherine.a@gmail.com'),
(25, 'Hussein Fahmy', 'Mohandeseen', '1955-02-02', 'M', '01089898989', 'hussein.f@yahoo.com'),
(26, 'Soad Hosny', 'Downtown, Cairo', '1968-11-11', 'F', '01190909090', 'soad.h@gmail.com'),
(27, 'Essam El-Hadary', 'Kafr El-Sheikh', '1973-01-15', 'M', '01211112222', 'essam.e@hotmail.com'),
(28, 'Farida Osman', 'Alexandria', '1995-05-25', 'F', '01522223333', 'farida.o@gmail.com'),
(29, 'Rami Malek', 'New Cairo', '1981-08-18', 'M', '01033334444', 'rami.m@gmail.com'),
(30, 'Mena Massoud', 'Rehab City', '1992-09-17', 'M', '01144445555', 'mena.m@yahoo.com'),
(31, 'Hala Shiha', 'Nasr City', '1980-04-14', 'F', '01255556666', 'hala.s@gmail.com'),
(32, 'Ahmed Helmy', '6th of October', '1975-12-30', 'M', '01566667777', 'ahmed.h@outlook.com'),
(33, 'Mona Zaki', '6th of October', '1976-11-18', 'F', '01077778888', 'mona.z@gmail.com'),
(34, 'Karim Abdel Aziz', 'Sheikh Zayed', '1975-08-17', 'M', '01188889999', 'karim.a@yahoo.com'),
(35, 'Mai Omar', 'Zamalek', '1988-10-05', 'F', '01299990000', 'mai.o@gmail.com'),
(36, 'Mohamed Salah', 'Nagrig, Gharbia', '1992-06-15', 'M', '01510101010', 'm.salah@liverpool.com'),
(37, 'Amir Karara', 'Tagamoa', '1977-10-11', 'M', '01021212121', 'amir.k@gmail.com'),
(38, 'Ghada Adel', 'Heliopolis', '1974-12-25', 'F', '01132323232', 'ghada.a@yahoo.com'),
(39, 'Asser Yassin', 'Maadi', '1981-02-25', 'M', '01243434343', 'asser.y@gmail.com'),
(40, 'Nelly Karim', 'Agouza', '1974-12-18', 'F', '01554545454', 'nelly.k@outlook.com'),
(41, 'Zaki Rostom', 'Sayeda Zeinab', '1945-03-05', 'M', '01065656565', 'zaki.r@gmail.com'),
(42, 'Faten Hamama', 'Mansoura', '1950-05-27', 'F', '01176767676', 'faten.h@yahoo.com'),
(43, 'Omar Sharif', 'Alexandria', '1940-04-10', 'M', '01287878787', 'omar.s@gmail.com'),
(44, 'Rushdy Abaza', 'Zagazig', '1942-08-03', 'M', '01598989898', 'rushdy.a@hotmail.com'),
(45, 'Shadia', 'Giza', '1948-02-08', 'F', '01009090909', 'shadia@gmail.com'),
(46, 'Abdel Halim', 'Sharkia', '1935-06-21', 'M', '01110101010', 'halim@yahoo.com'),
(47, 'Umm Kulthum', 'Daqahlia', '1920-12-31', 'F', '01221212121', 'kawkab@gmail.com'),
(48, 'Mahmoud Yassin', 'Port Said', '1941-06-02', 'M', '01532323232', 'm.yassin@outlook.com'),
(49, 'Nour El-Sherif', 'Cairo', '1946-04-28', 'M', '01043434343', 'nour.e@gmail.com'),
(50, 'Mervat Amin', 'Minya', '1948-11-24', 'F', '01154545454', 'mervat.a@yahoo.com'),
(51, 'Ahmed El-Sakka', 'Cairo', '1973-03-01', 'M', '01265656565', 'ahmed.s@gmail.com'),
(52, 'Mona Eldarawy', 'Qena City, Qena', '1995-07-22', 'F', '01576767676', 'mona.e@hotmail.com'),
(53, 'Hisham Abbas', 'Cairo', '1963-09-13', 'M', '01087878787', 'hisham.a@gmail.com'),
(54, 'Angham', 'Alexandria', '1972-01-19', 'F', '01198989898', 'angham@yahoo.com'),
(55, 'Mostafa Amar', 'Alexandria', '1966-09-22', 'M', '01209090909', 'mostafa.a2@gmail.com'),
(56, 'Ehab Tawfik', 'Cairo', '1966-01-07', 'M', '01511112222', 'ehab.t@outlook.com'),
(57, 'Hakim', 'Minya', '1962-10-07', 'M', '01022223333', 'hakim@gmail.com'),
(58, 'Bahaa Sultan', 'Cairo', '1972-10-01', 'M', '01133334444', 'bahaa.s@yahoo.com'),
(59, 'Somaya El Khashab', 'Alexandria', '1976-10-20', 'F', '01244445555', 'somaya.e@gmail.com'),
(60, 'Ruby', 'Cairo', '1981-10-08', 'F', '01555556666', 'ruby@hotmail.com'),
(61, 'Tarek El-Arian', 'Giza', '1963-09-12', 'M', '01066667777', 'tarek.e@gmail.com'),
(62, 'Asala Nasri', 'Cairo', '1969-05-15', 'F', '01177778888', 'asala.n@yahoo.com'),
(63, 'Majid Al Mohandis', 'Cairo', '1971-10-25', 'M', '01288889999', 'majid.a@gmail.com'),
(64, 'Sherif Mounir', 'Mansoura', '1959-05-14', 'M', '01599990000', 'sherif.m@outlook.com'),
(65, 'Roshdy Mahdy', 'Tanta', '1988-02-11', 'M', '01012312312', 'roshdy.m@gmail.com'),
(66, 'Nadia El Gendy', 'Alexandria', '1946-03-24', 'F', '01123423423', 'nadia.g@yahoo.com'),
(67, 'Youssra', 'Cairo', '1955-03-10', 'F', '01234534534', 'youssra@gmail.com'),
(68, 'Laila Elwi', 'Cairo', '1962-01-04', 'F', '01545645645', 'laila.e@hotmail.com'),
(69, 'Ilham Shaheen', 'Cairo', '1960-01-03', 'F', '01056756756', 'ilham.s@gmail.com'),
(70, 'Hassan Hosny', 'Cairo', '1931-10-15', 'M', '01167867867', 'hassan.h@yahoo.com'),
(71, 'Lotfy Labib', 'Beni Suef', '1938-08-18', 'M', '01278978978', 'lotfy.l@gmail.com'),
(72, 'Ahmed Bedier', 'Qena City, Qena', '1945-06-20', 'M', '01589089089', 'ahmed.b@outlook.com'),
(73, 'Sayed Zayan', 'Zagazig', '1943-08-17', 'M', '01090190190', 'sayed.z@gmail.com'),
(74, 'Younes Shalaby', 'Mansoura', '1941-05-31', 'M', '01101201201', 'younes.s@yahoo.com'),
(75, 'Samir Ghanem', 'Assiut', '1937-01-15', 'M', '01212312345', 'samir.g@gmail.com'),
(76, 'George Sidhom', 'Sohag', '1938-05-28', 'M', '01523423456', 'george.s@hotmail.com'),
(77, 'El Deif Ahmed', 'Dakahlia', '1936-12-12', 'M', '01034534567', 'deif.a@gmail.com'),
(78, 'Adel Emam', 'Mansoura', '1940-05-17', 'M', '01145645678', 'adel.e@yahoo.com'),
(79, 'Saeed Saleh', 'Menofia', '1938-07-31', 'M', '01256756789', 'saeed.s@gmail.com'),
(80, 'Ahmed Zaki', 'Zagazig', '1949-11-18', 'M', '01567867890', 'ahmed.z@outlook.com'),
(81, 'Mahmoud Abdel Aziz', 'Alexandria', '1946-06-04', 'M', '01078978901', 'm.abdelaziz@gmail.com'),
(82, 'Farouk El-Fishawy', 'Menofia', '1952-02-05', 'M', '01189089012', 'farouk.f@yahoo.com'),
(83, 'Mamdouh Abdel-Alim', 'Menofia', '1956-11-10', 'M', '01290190123', 'mamdouh.a@gmail.com'),
(84, 'Hisham Selim', 'Cairo', '1958-01-27', 'M', '01501201234', 'hisham.s@hotmail.com'),
(85, 'Mostafa Fahmy', 'Cairo', '1942-08-07', 'M', '01012341234', 'mostafa.f@gmail.com'),
(86, 'Hussein El Imam', 'Cairo', '1951-02-08', 'M', '01123452345', 'hussein.e@yahoo.com'),
(87, 'Wael Nour', 'Alexandria', '1961-04-24', 'M', '01234563456', 'wael.n@gmail.com'),
(88, 'Khaled Saleh', 'Cairo', '1964-01-23', 'M', '01545674567', 'khaled.s@outlook.com'),
(89, 'Tarek Lotfy', 'Mansoura', '1965-11-20', 'M', '01056785678', 'tarek.l@gmail.com'),
(90, 'Yasser Galal', 'Cairo', '1969-04-16', 'M', '01167896789', 'yasser.g@yahoo.com');

INSERT INTO Appointment (AppointmentID, AppointmentTimeAndDate, AppointmentStatus, PatientID, DoctorID) VALUES
(1, '2026-05-01 10:00:00', 'Completed', 1, 1), (2, '2026-05-01 10:30:00', 'Completed', 2, 2),
(3, '2026-05-02 11:00:00', 'Completed', 3, 3), (4, '2026-05-02 11:30:00', 'Completed', 4, 4),
(5, '2026-05-03 12:00:00', 'Completed', 5, 5), (6, '2026-05-03 12:30:00', 'Completed', 6, 6),
(7, '2026-05-04 13:00:00', 'Completed', 7, 7), (8, '2026-05-04 13:30:00', 'Completed', 8, 8),
(9, '2026-05-05 14:00:00', 'Completed', 9, 9), (10, '2026-05-05 14:30:00', 'Completed', 10, 10),
(11, '2026-05-06 10:00:00', 'Completed', 11, 1), (12, '2026-05-06 10:30:00', 'Completed', 12, 2),
(13, '2026-05-07 11:00:00', 'Completed', 13, 3), (14, '2026-05-07 11:30:00', 'Completed', 14, 4),
(15, '2026-05-08 12:00:00', 'Completed', 15, 5), (16, '2026-05-08 12:30:00', 'Completed', 16, 6),
(17, '2026-05-09 13:00:00', 'Cancelled', 17, 7), (18, '2026-05-09 13:30:00', 'Completed', 18, 8),
(19, '2026-05-10 14:00:00', 'Completed', 19, 9), (20, '2026-05-10 14:30:00', 'Completed', 20, 10),
(21, '2026-05-11 10:00:00', 'Completed', 21, 1), (22, '2026-05-11 10:30:00', 'Completed', 22, 2),
(23, '2026-05-12 11:00:00', 'Completed', 23, 3), (24, '2026-05-12 11:30:00', 'Completed', 24, 4),
(25, '2026-05-13 12:00:00', 'Completed', 25, 5), (26, '2026-05-13 12:30:00', 'Completed', 26, 6),
(27, '2026-05-14 13:00:00', 'Completed', 27, 7), (28, '2026-05-14 13:30:00', 'Completed', 28, 8),
(29, '2026-05-15 14:00:00', 'Completed', 29, 9), (30, '2026-05-15 14:30:00', 'Completed', 30, 10),
(31, '2026-05-16 10:00:00', 'Completed', 31, 1), (32, '2026-05-16 10:30:00', 'Cancelled', 32, 2),
(33, '2026-05-17 11:00:00', 'Completed', 33, 3), (34, '2026-05-17 11:30:00', 'Completed', 34, 4),
(35, '2026-05-18 12:00:00', 'Completed', 35, 5), (36, '2026-05-18 12:30:00', 'Completed', 36, 6),
(37, '2026-05-19 13:00:00', 'Completed', 37, 7), (38, '2026-05-19 13:30:00', 'Completed', 38, 8),
(39, '2026-05-20 14:00:00', 'Completed', 39, 9), (40, '2026-05-20 14:30:00', 'Completed', 40, 10),
(41, '2026-05-21 10:00:00', 'Completed', 41, 1), (42, '2026-05-21 10:30:00', 'Completed', 42, 2),
(43, '2026-05-22 11:00:00', 'Completed', 43, 3), (44, '2026-05-22 11:30:00', 'Completed', 44, 4),
(45, '2026-05-23 12:00:00', 'Completed', 45, 5), (46, '2026-05-23 12:30:00', 'Completed', 46, 6),
(47, '2026-05-24 13:00:00', 'Completed', 47, 7), (48, '2026-05-24 13:30:00', 'Completed', 48, 8),
(49, '2026-05-25 14:00:00', 'Cancelled', 49, 9), (50, '2026-05-25 14:30:00', 'Completed', 50, 10),
(51, '2026-06-01 10:00:00', 'Completed', 51, 1), (52, '2026-06-01 10:30:00', 'Completed', 52, 2),
(53, '2026-06-02 11:00:00', 'Completed', 53, 3), (54, '2026-06-02 11:30:00', 'Completed', 54, 4),
(55, '2026-06-03 12:00:00', 'Completed', 55, 5), (56, '2026-06-03 12:30:00', 'Completed', 56, 6),
(57, '2026-06-04 13:00:00', 'Completed', 57, 7), (58, '2026-06-04 13:30:00', 'Completed', 58, 8),
(59, '2026-06-05 14:00:00', 'Completed', 59, 9), (60, '2026-06-05 14:30:00', 'Completed', 60, 10),
(61, '2026-06-06 10:00:00', 'Completed', 61, 1), (62, '2026-06-06 10:30:00', 'Completed', 62, 2),
(63, '2026-06-07 11:00:00', 'Completed', 63, 3), (64, '2026-06-07 11:30:00', 'Completed', 64, 4),
(65, '2026-06-08 12:00:00', 'Completed', 65, 5), (66, '2026-06-08 12:30:00', 'Cancelled', 66, 6),
(67, '2026-06-09 13:00:00', 'Completed', 67, 7), (68, '2026-06-09 13:30:00', 'Completed', 68, 8),
(69, '2026-06-10 14:00:00', 'Completed', 69, 9), (70, '2026-06-10 14:30:00', 'Completed', 70, 10),
(71, '2026-06-11 10:00:00', 'Scheduled', 71, 1), (72, '2026-06-11 10:30:00', 'Scheduled', 72, 2),
(73, '2026-06-12 11:00:00', 'Scheduled', 73, 3), (74, '2026-06-12 11:30:00', 'Scheduled', 74, 4),
(75, '2026-06-13 12:00:00', 'Scheduled', 75, 5), (76, '2026-06-13 12:30:00', 'Scheduled', 76, 6),
(77, '2026-06-14 13:00:00', 'Scheduled', 77, 7), (78, '2026-06-14 13:30:00', 'Scheduled', 78, 8),
(79, '2026-06-15 14:00:00', 'Scheduled', 79, 9), (80, '2026-06-15 14:30:00', 'Scheduled', 80, 10),
(81, '2026-06-16 10:00:00', 'Scheduled', 81, 1), (82, '2026-06-16 10:30:00', 'Scheduled', 82, 2),
(83, '2026-06-17 11:00:00', 'Scheduled', 83, 3), (84, '2026-06-17 11:30:00', 'Scheduled', 84, 4),
(85, '2026-06-18 12:00:00', 'Scheduled', 85, 5), (86, '2026-06-18 12:30:00', 'Scheduled', 86, 6),
(87, '2026-06-19 13:00:00', 'Scheduled', 87, 7), (88, '2026-06-19 13:30:00', 'Scheduled', 88, 8),
(89, '2026-06-20 14:00:00', 'Scheduled', 89, 9), (90, '2026-06-20 14:30:00', 'Scheduled', 90, 10),
(91, '2026-06-21 10:00:00', 'Scheduled', 1, 1), (92, '2026-06-21 10:30:00', 'Scheduled', 2, 2),
(93, '2026-06-22 11:00:00', 'Scheduled', 3, 3), (94, '2026-06-22 11:30:00', 'Scheduled', 4, 4),
(95, '2026-06-23 12:00:00', 'Scheduled', 5, 5), (96, '2026-06-23 12:30:00', 'Scheduled', 6, 6),
(97, '2026-06-24 13:00:00', 'Scheduled', 7, 7), (98, '2026-06-24 13:30:00', 'Scheduled', 8, 8),
(99, '2026-06-25 14:00:00', 'Scheduled', 9, 9), (100, '2026-06-25 14:30:00', 'Scheduled', 10, 10);


INSERT INTO MedicalRecord (MedicalRecordID, Diagnosis, DescriptionOfVisit, AdditionalNotes, AppointmentID) VALUES
(1, 'Hypertension', 'High blood pressure reading', 'Patient advised to reduce salt', 1),
(2, 'Migraine', 'Severe temporal headache', 'Prescribed painkillers', 2),
(3, 'Tonsillitis', 'Sore throat and fever', 'Needs antibiotics', 3),
(4, 'Breast Cyst', 'Routine screening', 'Benign, recheck in 6 months', 4),
(5, 'Fractured Radius', 'Fall from stairs', 'Cast applied for 4 weeks', 5),
(6, 'Acne Vulgaris', 'Breakouts on face', 'Prescribed topical cream', 6),
(7, 'Anxiety Disorder', 'Panic attacks', 'Start cognitive behavioral therapy', 7),
(8, 'Viral Gastroenteritis', 'Nausea and vomiting', 'Hydration is key', 8),
(9, 'Appendicitis', 'Acute abdominal pain', 'Referred for immediate surgery', 9),
(10, 'Type 2 Diabetes', 'High blood sugar levels', 'Adjust insulin dose', 10),
(11, 'Arrhythmia', 'Irregular heartbeat detected', 'ECG done, monitoring required', 11),
(12, 'Epilepsy', 'Seizure episode reported', 'Adjusted antiepileptic dose', 12),
(13, 'Asthma', 'Shortness of breath', 'Inhaler technique reviewed', 13),
(14, 'Leukemia follow-up', 'Blood count check', 'CBC shows stable levels', 14),
(15, 'Osteoarthritis', 'Knee joint pain', 'Physiotherapy recommended', 15),
(16, 'Eczema', 'Dry, itchy skin patches', 'Use prescribed moisturizers', 16),
(17, 'Patient Cancelled', 'No show', 'N/A', 17),
(18, 'Vitamin D Deficiency', 'Fatigue and bone ache', 'Prescribed supplements', 18),
(19, 'Hernia', 'Swelling in groin area', 'Scheduled for repair surgery', 19),
(20, 'Gastric Ulcer', 'Stomach pain after meals', 'Avoid spicy food', 20),
(21, 'Heart Failure', 'Swollen ankles, fatigue', 'Diuretics prescribed', 21),
(22, 'Sciatica', 'Lower back pain radiating to leg', 'Rest and pain relief', 22),
(23, 'Otitis Media', 'Ear infection', 'Antibiotics given', 23),
(24, 'Chemotherapy cycle', 'Routine oncology visit', 'Patient tolerating well', 24),
(25, 'Sprained Ankle', 'Twisted during sports', 'RICE protocol advised', 25),
(26, 'Psoriasis', 'Scaly skin lesions', 'Topical steroids given', 26),
(27, 'Depression', 'Low mood and fatigue', 'Prescribed SSRIs', 27),
(28, 'Anemia', 'Low hemoglobin levels', 'Iron supplements prescribed', 28),
(29, 'Gallstones', 'Right upper quadrant pain', 'Ultrasound confirmed stones', 29),
(30, 'Thyroid Disorder', 'Hyperthyroidism symptoms', 'TSH levels high, start meds', 30),
(31, 'High Cholesterol', 'Lipid profile abnormal', 'Diet modification needed', 31),
(32, 'Patient Cancelled', 'No show', 'N/A', 32),
(33, 'Chickenpox', 'Vesicular rash', 'Isolate for 7 days', 33),
(34, 'Lung Nodule', 'CT scan review', 'Follow up in 3 months', 34),
(35, 'Carpal Tunnel', 'Numbness in hand', 'Wrist splint provided', 35),
(36, 'Alopecia', 'Hair loss observed', 'Minoxidil prescribed', 36),
(37, 'Insomnia', 'Trouble sleeping', 'Sleep hygiene tips discussed', 37),
(38, 'Common Cold', 'Runny nose and cough', 'Rest and warm fluids', 38),
(39, 'Wound Infection', 'Post-op check', 'Cleaned and redressed', 39),
(40, 'Hypertension', 'Routine checkup', 'Blood pressure stable', 40),
(41, 'Atrial Fibrillation', 'Palpitations', 'Blood thinners started', 41),
(42, 'Stroke Follow-up', 'Mobility check', 'Improving with physio', 42),
(43, 'Measles', 'Fever and rash', 'Supportive care', 43),
(44, 'Prostate Check', 'PSA levels high', 'Biopsy scheduled', 44),
(45, 'Tennis Elbow', 'Elbow pain', 'Avoid heavy lifting', 45),
(46, 'Fungal Infection', 'Ringworm on arm', 'Antifungal cream', 46),
(47, 'OCD', 'Obsessive thoughts reported', 'Therapy session conducted', 47),
(48, 'Bronchitis', 'Productive cough', 'Cough syrup prescribed', 48),
(49, 'Patient Cancelled', 'No show', 'N/A', 49),
(50, 'Type 1 Diabetes', 'Routine follow up', 'HbA1c levels checked', 50),
(51, 'Pending Checkup', 'Scheduled Visit', 'N/A', 51), (52, 'Pending Checkup', 'Scheduled Visit', 'N/A', 52),
(53, 'Pending Checkup', 'Scheduled Visit', 'N/A', 53), (54, 'Pending Checkup', 'Scheduled Visit', 'N/A', 54),
(55, 'Pending Checkup', 'Scheduled Visit', 'N/A', 55), (56, 'Pending Checkup', 'Scheduled Visit', 'N/A', 56),
(57, 'Pending Checkup', 'Scheduled Visit', 'N/A', 57), (58, 'Pending Checkup', 'Scheduled Visit', 'N/A', 58),
(59, 'Pending Checkup', 'Scheduled Visit', 'N/A', 59), (60, 'Pending Checkup', 'Scheduled Visit', 'N/A', 60),
(61, 'Pending Checkup', 'Scheduled Visit', 'N/A', 61), (62, 'Pending Checkup', 'Scheduled Visit', 'N/A', 62),
(63, 'Pending Checkup', 'Scheduled Visit', 'N/A', 63), (64, 'Pending Checkup', 'Scheduled Visit', 'N/A', 64),
(65, 'Pending Checkup', 'Scheduled Visit', 'N/A', 65), (66, 'Patient Cancelled', 'No show', 'N/A', 66),
(67, 'Pending Checkup', 'Scheduled Visit', 'N/A', 67), (68, 'Pending Checkup', 'Scheduled Visit', 'N/A', 68),
(69, 'Pending Checkup', 'Scheduled Visit', 'N/A', 69), (70, 'Pending Checkup', 'Scheduled Visit', 'N/A', 70),
(71, 'Pending Checkup', 'Scheduled Visit', 'N/A', 71), (72, 'Pending Checkup', 'Scheduled Visit', 'N/A', 72),
(73, 'Pending Checkup', 'Scheduled Visit', 'N/A', 73), (74, 'Pending Checkup', 'Scheduled Visit', 'N/A', 74),
(75, 'Pending Checkup', 'Scheduled Visit', 'N/A', 75), (76, 'Pending Checkup', 'Scheduled Visit', 'N/A', 76),
(77, 'Pending Checkup', 'Scheduled Visit', 'N/A', 77), (78, 'Pending Checkup', 'Scheduled Visit', 'N/A', 78),
(79, 'Pending Checkup', 'Scheduled Visit', 'N/A', 79), (80, 'Pending Checkup', 'Scheduled Visit', 'N/A', 80),
(81, 'Pending Checkup', 'Scheduled Visit', 'N/A', 81), (82, 'Pending Checkup', 'Scheduled Visit', 'N/A', 82),
(83, 'Pending Checkup', 'Scheduled Visit', 'N/A', 83), (84, 'Pending Checkup', 'Scheduled Visit', 'N/A', 84),
(85, 'Pending Checkup', 'Scheduled Visit', 'N/A', 85), (86, 'Pending Checkup', 'Scheduled Visit', 'N/A', 86),
(87, 'Pending Checkup', 'Scheduled Visit', 'N/A', 87), (88, 'Pending Checkup', 'Scheduled Visit', 'N/A', 88),
(89, 'Pending Checkup', 'Scheduled Visit', 'N/A', 89), (90, 'Pending Checkup', 'Scheduled Visit', 'N/A', 90),
(91, 'Pending Checkup', 'Scheduled Visit', 'N/A', 91), (92, 'Pending Checkup', 'Scheduled Visit', 'N/A', 92),
(93, 'Pending Checkup', 'Scheduled Visit', 'N/A', 93), (94, 'Pending Checkup', 'Scheduled Visit', 'N/A', 94),
(95, 'Pending Checkup', 'Scheduled Visit', 'N/A', 95), (96, 'Pending Checkup', 'Scheduled Visit', 'N/A', 96),
(97, 'Pending Checkup', 'Scheduled Visit', 'N/A', 97), (98, 'Pending Checkup', 'Scheduled Visit', 'N/A', 98),
(99, 'Pending Checkup', 'Scheduled Visit', 'N/A', 99), (100, 'Pending Checkup', 'Scheduled Visit', 'N/A', 100);



INSERT INTO Payment (PaymentID, PaymentDate, PaymentMethod, PaymentAmountPaid, AdditionalNotes, AppointmentID) VALUES
(1, '2026-05-01', 'Cash', 500.00, 'Paid in full', 1), (2, '2026-05-01', 'Visa', 600.00, 'Paid in full', 2),
(3, '2026-05-02', 'InstaPay', 400.00, 'Transferred via app', 3), (4, '2026-05-02', 'Insurance', 150.00, 'Syndicate Coverage', 4),
(5, '2026-05-03', 'Vodafone Cash', 700.00, 'Paid in full', 5), (6, '2026-05-03', 'Cash', 350.00, 'Follow up discount', 6),
(7, '2026-05-04', 'Visa', 800.00, 'Session fee', 7), (8, '2026-05-04', 'Cash', 250.00, 'Paid in full', 8),
(9, '2026-05-05', 'InstaPay', 1500.00, 'Surgery deposit', 9), (10, '2026-05-05', 'Insurance', 100.00, 'Bupa Insurance', 10),
(11, '2026-05-06', 'Vodafone Cash', 500.00, 'Paid in full', 11), (12, '2026-05-06', 'Cash', 600.00, 'Paid in full', 12),
(13, '2026-05-07', 'Visa', 400.00, 'Paid in full', 13), (14, '2026-05-07', 'InstaPay', 300.00, 'Paid in full', 14),
(15, '2026-05-08', 'Cash', 700.00, 'Paid in full', 15), (16, '2026-05-08', 'Insurance', 150.00, 'AXA Insurance', 16),
(17, '2026-05-09', 'Cancelled', 0.00, 'Refunded', 17), (18, '2026-05-09', 'Visa', 250.00, 'Paid in full', 18),
(19, '2026-05-10', 'InstaPay', 5000.00, 'Full Surgery Cost', 19), (20, '2026-05-10', 'Cash', 400.00, 'Paid in full', 20),
(21, '2026-05-11', 'Cash', 500.00, 'Paid in full', 21), (22, '2026-05-11', 'Vodafone Cash', 600.00, 'Paid in full', 22),
(23, '2026-05-12', 'InstaPay', 400.00, 'Paid in full', 23), (24, '2026-05-12', 'Insurance', 100.00, 'MetLife', 24),
(25, '2026-05-13', 'Visa', 700.00, 'Paid in full', 25), (26, '2026-05-13', 'Cash', 350.00, 'Paid in full', 26),
(27, '2026-05-14', 'Vodafone Cash', 800.00, 'Paid in full', 27), (28, '2026-05-14', 'InstaPay', 250.00, 'Paid in full', 28),
(29, '2026-05-15', 'Cash', 1200.00, 'Procedure fee', 29), (30, '2026-05-15', 'Visa', 400.00, 'Paid in full', 30),
(31, '2026-05-16', 'InstaPay', 500.00, 'Paid in full', 31), (32, '2026-05-16', 'Cancelled', 0.00, 'Refunded', 32),
(33, '2026-05-17', 'Cash', 400.00, 'Paid in full', 33), (34, '2026-05-17', 'Insurance', 150.00, 'Syndicate Coverage', 34),
(35, '2026-05-18', 'Visa', 700.00, 'Paid in full', 35), (36, '2026-05-18', 'Cash', 350.00, 'Paid in full', 36),
(37, '2026-05-19', 'InstaPay', 800.00, 'Paid in full', 37), (38, '2026-05-19', 'Vodafone Cash', 250.00, 'Paid in full', 38),
(39, '2026-05-20', 'Cash', 300.00, 'Dressing fee', 39), (40, '2026-05-20', 'Insurance', 100.00, 'AXA', 40),
(41, '2026-05-21', 'Visa', 500.00, 'Paid in full', 41), (42, '2026-05-21', 'InstaPay', 600.00, 'Paid in full', 42),
(43, '2026-05-22', 'Cash', 400.00, 'Paid in full', 43), (44, '2026-05-22', 'Vodafone Cash', 800.00, 'Procedure fee', 44),
(45, '2026-05-23', 'Insurance', 200.00, 'Bupa', 45), (46, '2026-05-23', 'Cash', 350.00, 'Paid in full', 46),
(47, '2026-05-24', 'Visa', 800.00, 'Paid in full', 47), (48, '2026-05-24', 'InstaPay', 250.00, 'Paid in full', 48),
(49, '2026-05-25', 'Cancelled', 0.00, 'Refunded', 49), (50, '2026-05-25', 'Cash', 400.00, 'Paid in full', 50),
(51, '2026-06-01', 'Cash', 0.00, 'Pending', 51), (52, '2026-06-01', 'Visa', 0.00, 'Pending', 52),
(53, '2026-06-02', 'InstaPay', 0.00, 'Pending', 53), (54, '2026-06-02', 'Cash', 0.00, 'Pending', 54),
(55, '2026-06-03', 'Vodafone Cash', 0.00, 'Pending', 55), (56, '2026-06-03', 'Visa', 0.00, 'Pending', 56),
(57, '2026-06-04', 'Cash', 0.00, 'Pending', 57), (58, '2026-06-04', 'Insurance', 0.00, 'Pending', 58),
(59, '2026-06-05', 'InstaPay', 0.00, 'Pending', 59), (60, '2026-06-05', 'Cash', 0.00, 'Pending', 60),
(61, '2026-06-06', 'Visa', 0.00, 'Pending', 61), (62, '2026-06-06', 'Vodafone Cash', 0.00, 'Pending', 62),
(63, '2026-06-07', 'Cash', 0.00, 'Pending', 63), (64, '2026-06-07', 'InstaPay', 0.00, 'Pending', 64),
(65, '2026-06-08', 'Insurance', 0.00, 'Pending', 65), (66, '2026-06-08', 'Cancelled', 0.00, 'Cancelled', 66),
(67, '2026-06-09', 'Cash', 0.00, 'Pending', 67), (68, '2026-06-09', 'Visa', 0.00, 'Pending', 68),
(69, '2026-06-10', 'InstaPay', 0.00, 'Pending', 69), (70, '2026-06-10', 'Cash', 0.00, 'Pending', 70),
(71, '2026-06-11', 'Visa', 0.00, 'Pending', 71), (72, '2026-06-11', 'Cash', 0.00, 'Pending', 72),
(73, '2026-06-12', 'Vodafone Cash', 0.00, 'Pending', 73), (74, '2026-06-12', 'InstaPay', 0.00, 'Pending', 74),
(75, '2026-06-13', 'Cash', 0.00, 'Pending', 75), (76, '2026-06-13', 'Insurance', 0.00, 'Pending', 76),
(77, '2026-06-14', 'Visa', 0.00, 'Pending', 77), (78, '2026-06-14', 'Cash', 0.00, 'Pending', 78),
(79, '2026-06-15', 'InstaPay', 0.00, 'Pending', 79), (80, '2026-06-15', 'Vodafone Cash', 0.00, 'Pending', 80),
(81, '2026-06-16', 'Cash', 0.00, 'Pending', 81), (82, '2026-06-16', 'Visa', 0.00, 'Pending', 82),
(83, '2026-06-17', 'Insurance', 0.00, 'Pending', 83), (84, '2026-06-17', 'InstaPay', 0.00, 'Pending', 84),
(85, '2026-06-18', 'Cash', 0.00, 'Pending', 85), (86, '2026-06-18', 'Visa', 0.00, 'Pending', 86),
(87, '2026-06-19', 'Vodafone Cash', 0.00, 'Pending', 87), (88, '2026-06-19', 'Cash', 0.00, 'Pending', 88),
(89, '2026-06-20', 'InstaPay', 0.00, 'Pending', 89), (90, '2026-06-20', 'Insurance', 0.00, 'Pending', 90),
(91, '2026-06-21', 'Visa', 0.00, 'Pending', 91), (92, '2026-06-21', 'Cash', 0.00, 'Pending', 92),
(93, '2026-06-22', 'InstaPay', 0.00, 'Pending', 93), (94, '2026-06-22', 'Vodafone Cash', 0.00, 'Pending', 94),
(95, '2026-06-23', 'Cash', 0.00, 'Pending', 95), (96, '2026-06-23', 'Visa', 0.00, 'Pending', 96),
(97, '2026-06-24', 'Insurance', 0.00, 'Pending', 97), (98, '2026-06-24', 'InstaPay', 0.00, 'Pending', 98),
(99, '2026-06-25', 'Cash', 0.00, 'Pending', 99), (100, '2026-06-25', 'Visa', 0.00, 'Pending', 100);



INSERT INTO Prescription (PrescriptionID, PrescriptionDosage, StartDate, EndDate, PrescriptionFrequency, SpecialInstructions, MedicationName, MedicalRecordID) VALUES
(1, '5mg', '2026-05-01', '2026-06-01', 'Once daily', 'Take in the morning', 'Concor 5', 1),
(2, '400mg', '2026-05-01', '2026-05-05', 'As needed', 'Take after food', 'Brufen 400', 2),
(3, '1g', '2026-05-02', '2026-05-09', 'Every 12 hours', 'Finish the course', 'Augmentin 1g', 3),
(4, 'N/A', '2026-05-02', '2026-05-02', 'N/A', 'No medication required', 'None', 4),
(5, '50mg', '2026-05-03', '2026-05-10', 'Twice daily', 'For pain relief', 'Cataflam 50', 5),
(6, '1%', '2026-05-03', '2026-05-17', 'Twice daily', 'Apply thin layer', 'Fucidin Cream', 6),
(7, '10mg', '2026-05-04', '2026-06-04', 'Once daily', 'May cause drowsiness', 'Cipralex', 7),
(8, '500mg', '2026-05-04', '2026-05-07', 'Every 8 hours', 'For fever', 'Panadol Extra', 8),
(9, 'N/A', '2026-05-05', '2026-05-05', 'N/A', 'Surgical intervention', 'None', 9),
(10, '1000mg', '2026-05-05', '2026-06-05', 'Twice daily', 'Take with meals', 'Glucophage 1000', 10),
(11, '150mg', '2026-05-06', '2026-06-06', 'Once daily', 'Regular monitoring', 'Tambocor', 11),
(12, '500mg', '2026-05-06', '2026-06-06', 'Twice daily', 'Do not skip dose', 'Keppra 500', 12),
(13, '100mcg', '2026-05-07', '2026-06-07', 'As needed', 'Shake well before use', 'Ventolin Inhaler', 13),
(14, 'N/A', '2026-05-07', '2026-05-07', 'N/A', 'Routine checkup', 'None', 14),
(15, '200mg', '2026-05-08', '2026-05-22', 'Once daily', 'Take after food', 'Celebrex 200', 15),
(16, 'N/A', '2026-05-08', '2026-05-22', 'Twice daily', 'Apply on dry skin', 'Betaderm Ointment', 16),
(17, 'N/A', '2026-05-09', '2026-05-09', 'N/A', 'Cancelled Appointment', 'None', 17),
(18, '10000 IU', '2026-05-09', '2026-07-09', 'Once weekly', 'Take with fatty meal', 'Davindi', 18),
(19, 'N/A', '2026-05-10', '2026-05-10', 'N/A', 'Pre-op instructions', 'None', 19),
(20, '40mg', '2026-05-10', '2026-05-24', 'Once daily', 'Take before breakfast', 'Controloc 40', 20),
(21, '40mg', '2026-05-11', '2026-06-11', 'Once daily', 'Take in morning', 'Lasix 40', 21),
(22, '75mg', '2026-05-11', '2026-05-25', 'Once daily', 'For nerve pain', 'Lyrica 75', 22),
(23, '500mg', '2026-05-12', '2026-05-17', 'Every 8 hours', 'Finish course', 'Hibiotic 500', 23),
(24, 'N/A', '2026-05-12', '2026-05-12', 'N/A', 'IV Treatment', 'None', 24),
(25, '50mg', '2026-05-13', '2026-05-18', 'Twice daily', 'For swelling', 'Voltaren 50', 25),
(26, 'N/A', '2026-05-13', '2026-05-27', 'Twice daily', 'Avoid sun exposure', 'Dermovate Cream', 26),
(27, '50mg', '2026-05-14', '2026-06-14', 'Once daily', 'Take in morning', 'Lustral 50', 27),
(28, '100mg', '2026-05-14', '2026-06-14', 'Once daily', 'May cause dark stool', 'Ferrotron', 28),
(29, 'N/A', '2026-05-15', '2026-05-15', 'N/A', 'Surgery planned', 'None', 29),
(30, '5mg', '2026-05-15', '2026-06-15', 'Once daily', 'Monitor heart rate', 'Neo-Mercazole', 30),
(31, '20mg', '2026-05-16', '2026-06-16', 'Once daily', 'Take at night', 'Lipitor 20', 31),
(32, 'N/A', '2026-05-16', '2026-05-16', 'N/A', 'Cancelled Appointment', 'None', 32),
(33, 'N/A', '2026-05-17', '2026-05-24', 'Twice daily', 'Apply on rash', 'Calamine Lotion', 33),
(34, 'N/A', '2026-05-17', '2026-05-17', 'N/A', 'Review in 3 months', 'None', 34),
(35, '300mg', '2026-05-18', '2026-06-01', 'Once daily', 'Nerve support', 'Neuroton', 35),
(36, '5%', '2026-05-18', '2026-07-18', 'Twice daily', 'Spray on scalp', 'Hair Plus Back', 36),
(37, '3mg', '2026-05-19', '2026-06-02', 'Before bed', 'For sleep', 'Night Calm', 37),
(38, 'N/A', '2026-05-19', '2026-05-24', '3 times daily', 'Vitamin C', 'C-Retard', 38),
(39, '500mg', '2026-05-20', '2026-05-25', 'Every 12 hours', 'Antibacterial', 'Ciprocin 500', 39),
(40, '10mg', '2026-05-20', '2026-06-20', 'Once daily', 'Maintain dose', 'Exforge 10/160', 40),
(41, '5mg', '2026-05-21', '2026-06-21', 'Once daily', 'Blood thinner', 'Eliquis 5', 41),
(42, '75mg', '2026-05-21', '2026-06-21', 'Once daily', 'Heart protection', 'Plavix 75', 42),
(43, '500mg', '2026-05-22', '2026-05-27', 'Every 8 hours', 'Fever reducer', 'Adol 500', 43),
(44, 'N/A', '2026-05-22', '2026-05-22', 'N/A', 'Referral for Biopsy', 'None', 44),
(45, '20mg', '2026-05-23', '2026-05-30', 'Once daily', 'Anti-inflammatory', 'Feldene 20', 45),
(46, '1%', '2026-05-23', '2026-06-06', 'Twice daily', 'Apply locally', 'Lamisil Cream', 46),
(47, '20mg', '2026-05-24', '2026-06-24', 'Once daily', 'Take in morning', 'Prozac 20', 47),
(48, 'N/A', '2026-05-24', '2026-05-29', '3 times daily', 'Cough syrup', 'Oplex Syrup', 48),
(49, 'N/A', '2026-05-25', '2026-05-25', 'N/A', 'Cancelled Appointment', 'None', 49),
(50, '100 IU', '2026-05-25', '2026-06-25', 'As directed', 'Adjust per meals', 'Lantus Pen', 50),
(51, 'Pending', '2026-06-01', '2026-06-01', 'Pending', 'Pending Doctor Visit', 'Pending', 51),
(52, 'Pending', '2026-06-01', '2026-06-01', 'Pending', 'Pending Doctor Visit', 'Pending', 52),
(53, 'Pending', '2026-06-02', '2026-06-02', 'Pending', 'Pending Doctor Visit', 'Pending', 53),
(54, 'Pending', '2026-06-02', '2026-06-02', 'Pending', 'Pending Doctor Visit', 'Pending', 54),
(55, 'Pending', '2026-06-03', '2026-06-03', 'Pending', 'Pending Doctor Visit', 'Pending', 55),
(56, 'Pending', '2026-06-03', '2026-06-03', 'Pending', 'Pending Doctor Visit', 'Pending', 56),
(57, 'Pending', '2026-06-04', '2026-06-04', 'Pending', 'Pending Doctor Visit', 'Pending', 57),
(58, 'Pending', '2026-06-04', '2026-06-04', 'Pending', 'Pending Doctor Visit', 'Pending', 58),
(59, 'Pending', '2026-06-05', '2026-06-05', 'Pending', 'Pending Doctor Visit', 'Pending', 59),
(60, 'Pending', '2026-06-05', '2026-06-05', 'Pending', 'Pending Doctor Visit', 'Pending', 60),
(61, 'Pending', '2026-06-06', '2026-06-06', 'Pending', 'Pending Doctor Visit', 'Pending', 61),
(62, 'Pending', '2026-06-06', '2026-06-06', 'Pending', 'Pending Doctor Visit', 'Pending', 62),
(63, 'Pending', '2026-06-07', '2026-06-07', 'Pending', 'Pending Doctor Visit', 'Pending', 63),
(64, 'Pending', '2026-06-07', '2026-06-07', 'Pending', 'Pending Doctor Visit', 'Pending', 64),
(65, 'Pending', '2026-06-08', '2026-06-08', 'Pending', 'Pending Doctor Visit', 'Pending', 65),
(66, 'N/A', '2026-06-08', '2026-06-08', 'N/A', 'Cancelled Appointment', 'None', 66),
(67, 'Pending', '2026-06-09', '2026-06-09', 'Pending', 'Pending Doctor Visit', 'Pending', 67),
(68, 'Pending', '2026-06-09', '2026-06-09', 'Pending', 'Pending Doctor Visit', 'Pending', 68),
(69, 'Pending', '2026-06-10', '2026-06-10', 'Pending', 'Pending Doctor Visit', 'Pending', 69),
(70, 'Pending', '2026-06-10', '2026-06-10', 'Pending', 'Pending Doctor Visit', 'Pending', 70),
(71, 'Pending', '2026-06-11', '2026-06-11', 'Pending', 'Pending Doctor Visit', 'Pending', 71),
(72, 'Pending', '2026-06-11', '2026-06-11', 'Pending', 'Pending Doctor Visit', 'Pending', 72),
(73, 'Pending', '2026-06-12', '2026-06-12', 'Pending', 'Pending Doctor Visit', 'Pending', 73),
(74, 'Pending', '2026-06-12', '2026-06-12', 'Pending', 'Pending Doctor Visit', 'Pending', 74),
(75, 'Pending', '2026-06-13', '2026-06-13', 'Pending', 'Pending Doctor Visit', 'Pending', 75),
(76, 'Pending', '2026-06-13', '2026-06-13', 'Pending', 'Pending Doctor Visit', 'Pending', 76),
(77, 'Pending', '2026-06-14', '2026-06-14', 'Pending', 'Pending Doctor Visit', 'Pending', 77),
(78, 'Pending', '2026-06-14', '2026-06-14', 'Pending', 'Pending Doctor Visit', 'Pending', 78),
(79, 'Pending', '2026-06-15', '2026-06-15', 'Pending', 'Pending Doctor Visit', 'Pending', 79),
(80, 'Pending', '2026-06-15', '2026-06-15', 'Pending', 'Pending Doctor Visit', 'Pending', 80),
(81, 'Pending', '2026-06-16', '2026-06-16', 'Pending', 'Pending Doctor Visit', 'Pending', 81),
(82, 'Pending', '2026-06-16', '2026-06-16', 'Pending', 'Pending Doctor Visit', 'Pending', 82),
(83, 'Pending', '2026-06-17', '2026-06-17', 'Pending', 'Pending Doctor Visit', 'Pending', 83),
(84, 'Pending', '2026-06-17', '2026-06-17', 'Pending', 'Pending Doctor Visit', 'Pending', 84),
(85, 'Pending', '2026-06-18', '2026-06-18', 'Pending', 'Pending Doctor Visit', 'Pending', 85),
(86, 'Pending', '2026-06-18', '2026-06-18', 'Pending', 'Pending Doctor Visit', 'Pending', 86),
(87, 'Pending', '2026-06-19', '2026-06-19', 'Pending', 'Pending Doctor Visit', 'Pending', 87),
(88, 'Pending', '2026-06-19', '2026-06-19', 'Pending', 'Pending Doctor Visit', 'Pending', 88),
(89, 'Pending', '2026-06-20', '2026-06-20', 'Pending', 'Pending Doctor Visit', 'Pending', 89),
(90, 'Pending', '2026-06-20', '2026-06-20', 'Pending', 'Pending Doctor Visit', 'Pending', 90),
(91, 'Pending', '2026-06-21', '2026-06-21', 'Pending', 'Pending Doctor Visit', 'Pending', 91),
(92, 'Pending', '2026-06-21', '2026-06-21', 'Pending', 'Pending Doctor Visit', 'Pending', 92),
(93, 'Pending', '2026-06-22', '2026-06-22', 'Pending', 'Pending Doctor Visit', 'Pending', 93),
(94, 'Pending', '2026-06-22', '2026-06-22', 'Pending', 'Pending Doctor Visit', 'Pending', 94),
(95, 'Pending', '2026-06-23', '2026-06-23', 'Pending', 'Pending Doctor Visit', 'Pending', 95),
(96, 'Pending', '2026-06-23', '2026-06-23', 'Pending', 'Pending Doctor Visit', 'Pending', 96),
(97, 'Pending', '2026-06-24', '2026-06-24', 'Pending', 'Pending Doctor Visit', 'Pending', 97),
(98, 'Pending', '2026-06-24', '2026-06-24', 'Pending', 'Pending Doctor Visit', 'Pending', 98),
(99, 'Pending', '2026-06-25', '2026-06-25', 'Pending', 'Pending Doctor Visit', 'Pending', 99),
(100, 'Pending', '2026-06-25', '2026-06-25', 'Pending', 'Pending Doctor Visit', 'Pending', 100);





select *from Patient;
select * from Payment;
select *from Prescription;
select *from Doctor;
select *from Appointment;
select * from MedicalRecord;



-----------------------
/*


**التحدي الأول:**
احسب إجمالي المبالغ (Total Revenue) اللي دخلت العيادة لكل طريقة دفع (Payment Method)، بشرط إن الموعد يكون مكتمل ('Completed' فقط). ورتب النتيجة تنازلياً من طريقة الدفع الأكثر دخلاً للأقل.

**التحدي الثاني:**
استخرج بيانات المرضى من محافظة "قنا" اللي الدكاترة كتبولهم روشتات مدتها أطول من 10 أيام. (المطلوب عرضه: اسم المريض، رقم تليفونه، اسم الدكتور، واسم الدواء).

**التحدي الثالث:**
ابحث عن الدكاترة اللي عندهم أكثر من موعد واحد تم إلغاؤه ('Cancelled'). (المطلوب عرضه: اسم الدكتور، تخصصه، وعدد المواعيد الملغية لكل دكتور منهم).

**التحدي الرابع:**
استخرج بيانات المرضى (الاسم وتاريخ الميلاد) اللي دفعوا مبلغ أكبر من 400 جنيه باستخدام طريقة دفع 'InstaPay' أو 'Vodafone Cash'، بشرط إن التشخيص الخاص بيهم في السجل الطبي لا يساوي 'Pending Checkup'.

**التحدي الخامس (تقرير شركات التأمين):**
قم بإنشاء تقرير يعرض كل تخصص طبي (Doctor Specilization) وإجمالي المبالغ المدفوعة له عن طريق التأمين ('Insurance').
بشرط: أن تكون المواعيد مكتملة ('Completed')، وأن يكون المرضى من كبار السن (مواليد ما قبل سنة 1990). ورتب النتيجة تنازلياً من التخصص الأكثر دخلاً للأقل.

*/




------------


SELECT 
    Payment.PaymentMethod,
    SUM(Payment.PaymentAmountPaid) AS TotalRevenue
FROM Payment
 JOIN Appointment
    ON Payment.AppointmentID = Appointment.AppointmentID
GROUP BY Payment.PaymentMethod
ORDER BY TotalRevenue DESC;


---------------------

select PatientName,PatientAddress,varcharDateOfBirth,Doctor.DoctorName,PatientPhoneNumber,MedicationName from Patient
Join Appointment 
ON Patient.PatientID=Appointment.PatientID
Join MedicalRecord 
ON MedicalRecord.AppointmentID=Appointment.AppointmentID
Join Prescription
ON MedicalRecord.MedicalRecordID=Prescription.MedicalRecordID
JOIN Doctor 
ON Appointment.DoctorID = Doctor.DoctorID
where (DATEDIFF(day,Prescription.StartDate,Prescription.EndDate)>10)And
Patient.PatientAddress like '%Qena%';

--------------------------------------------------------


select Doctor.DoctorName,Doctor.DoctorSpecilization ,Count(Appointment.AppointmentID)AS NumberOfCanceld from Doctor
Join Appointment
ON Doctor.DoctorID=Appointment.DoctorID
where Appointment.AppointmentStatus='Cancelled'
group by  Doctor.DoctorName,Doctor.DoctorSpecilization
having count(Appointment.AppointmentID)>=1;



-------------------------------------------------------------
select Patient.PatientName,Patient.varcharDateOfBirth from patient
Join Appointment 
ON Appointment.PatientID=Patient.PatientID
Join Payment 
ON Payment.AppointmentID=Appointment.AppointmentID
JOIN MedicalRecord
ON MedicalRecord.AppointmentID=Appointment.AppointmentID
WHERE Payment.PaymentAmountPaid>400 
AND (Payment.PaymentMethod='InstaPay' OR Payment.PaymentMethod='Vodafone Cash')
AND MedicalRecord.Diagnosis !='Pending Checkup';



-----------------------------------------------------------


SELECT Doctor.DoctorSpecilization,sum(Payment.PaymentAmountPaid) AS TotalMoney from Doctor 
Join Appointment
ON Appointment.DoctorID=Doctor.DoctorID
Join Payment
ON Payment.AppointmentID=Appointment.AppointmentID
Join Patient
ON Patient.PatientID=Appointment.PatientID
where Payment.PaymentMethod='Insurance'

And Appointment.AppointmentStatus='Completed'
And Patient.varcharDateOfBirth<'1990-01-01'
group by Doctor.DoctorSpecilization
ORDER BY TotalMoney DESC;



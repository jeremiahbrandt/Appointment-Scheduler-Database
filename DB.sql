-- Delete existing stored procedures
DROP PROCEDURE Get_Professional;
DROP PROCEDURE Get_Professional_TimeSlots;
DROP PROCEDURE Get_Professional_Appointments;

-- Delete existing database
DROP TABLE Appointment;
DROP TABLE ClientFavorite;
DROP TABLE Client;
DROP TABLE TimeSlot;
DROP TABLE Professional;
DROP TABLE ProfessionalAddress;
DROP TABLE Account;

-- Create tables
CREATE TABLE Account
(
	AccountId int NOT NULL,
	FirstName NVARCHAR(255), 
	LastName NVARCHAR(255), 
	EmailAddress NVARCHAR(255),
	CONSTRAINT PK_Account PRIMARY KEY(AccountId)
);
CREATE TABLE ProfessionalAddress
(
	ProfessionalAddressId int Identity(1, 1) NOT NULL,
	StreetNumber int, 
	StreetName NVARCHAR(255), 
	City NVARCHAR(255), 
	StateName NVARCHAR(255), 
	ZipCode NVARCHAR(255),
	CONSTRAINT PK_Address PRIMARY KEY(ProfessionalAddressId)
);
CREATE TABLE Professional
(
	ProfessionalId int Identity(1, 1) NOT NULL, 
	AccountId int,
	ProfessionalAddressId int,
	Occupation NVARCHAR(255),
	CONSTRAINT PK_Professional PRIMARY KEY(ProfessionalId),
	CONSTRAINT FK_Professional_AccountId FOREIGN KEY(AccountId) REFERENCES Account(AccountId), 
	CONSTRAINT FK_AddressId FOREIGN KEY(ProfessionalAddressId) REFERENCES ProfessionalAddress(ProfessionalAddressId)
);

CREATE TABLE TimeSlot
(
	TimeSlotId int Identity(1, 1) NOT NULL, 
	ProfessionalId int,
	StartTime DateTime2,
	EndTime DateTime2,
	CONSTRAINT PK_TimeSlot PRIMARY KEY(TimeSlotId),
	CONSTRAINT FK_ProfessionalId FOREIGN KEY(ProfessionalId) REFERENCES Professional(ProfessionalId)
);
CREATE TABLE Client
(
	ClientId int Identity(1, 1) NOT NULL,
	AccountId int,
	CONSTRAINT PK_Client PRIMARY KEY(ClientId),
	CONSTRAINT FK_Client_AccountId FOREIGN KEY(AccountId) REFERENCES Account(AccountId)
);

CREATE TABLE ClientFavorite
(
	ClientId int,
	ProfessionalId int,
	CONSTRAINT FK_ClientFavorites_ClientId FOREIGN KEY(ClientId) REFERENCES Client(ClientId),
	CONSTRAINT FK_ClientFavorites_ProfessionalId FOREIGN KEY(ProfessionalId) REFERENCES Professional(ProfessionalId)
); 

CREATE TABLE Appointment
(
	AppointmentId int Identity(1, 1) NOT NULL,
	ClientId int,
	ProfessionalId int,
	TimeSlotId int,
	AppointmentName NVARCHAR(255),
	AppointmentDescription NVARCHAR(255),
	AppointmentLocation NVARCHAR(255),
	CONSTRAINT PK_Appointment PRIMARY KEY(AppointmentId),
	CONSTRAINT FK_Appointment_ClientId FOREIGN KEY(ClientId) REFERENCES Client(ClientId),
	CONSTRAINT FK_Appointment_ProfessionalId FOREIGN KEY(ProfessionalId) REFERENCES Professional(ProfessionalId),
	CONSTRAINT FK_Appointment_TimeSlotId FOREIGN KEY(TimeSlotId) REFERENCES TimeSlot(TimeSlotId),
); 
GO

-- Create stored procedures
-- Professional stored procedures
CREATE PROC Get_Professional @Uid INT
AS
SELECT FirstName, LastName, EmailAddress, Occupation, StreetNumber, StreetName, City, StateName, ZipCode
FROM Account JOIN Professional ON(Account.AccountId = Professional.AccountId) JOIN ProfessionalAddress ON (Professional.ProfessionalAddressId = ProfessionalAddress.ProfessionalAddressId)
WHERE Account.AccountId = @Uid;
GO

CREATE PROC Get_Professional_TimeSlots @Uid INT
AS
SELECT StartTime, EndTime 
FROM Professional JOIN Account ON(Account.AccountId = Professional.AccountId) JOIN TimeSlot ON(Professional.ProfessionalId = TimeSlot.ProfessionalId)
WHERE Account.AccountId = @Uid;
GO

CREATE PROC Get_Professional_Appointments @Uid INT
AS
SELECT StartTime, EndTime, AppointmentName, AppointmentDescription, AppointmentLocation, AppointmentDescription,
(
	SELECT FirstName 
	FROM Professional JOIN Appointment ON(Professional.ProfessionalId = Appointment.AppointmentId) JOIN Client ON(Client.ClientId = Appointment.ClientId) JOIN Account ON(Account.AccountId = Client.AccountId) 
	WHERE (Professional.AccountId = @Uid) AND (Client.ClientId = Appointment.ClientId)
) as Client_FirstName,
(
	SELECT LastName 
	FROM Professional JOIN Appointment ON(Professional.ProfessionalId = Appointment.AppointmentId) JOIN Client ON(Client.ClientId = Appointment.ClientId) JOIN Account ON(Account.AccountId = Client.AccountId) 
	WHERE (Professional.AccountId = @Uid) AND (Client.ClientId = Appointment.ClientId)
) as Client_LastName
FROM Professional JOIN Account ON(Account.AccountId = Professional.AccountId) JOIN TimeSlot ON(Professional.ProfessionalId = TimeSlot.ProfessionalId) JOIN Appointment ON(Professional.ProfessionalId = Appointment.AppointmentId)
WHERE Account.AccountId = @Uid;
GO

-- Client stored procedures
-- Populate tables
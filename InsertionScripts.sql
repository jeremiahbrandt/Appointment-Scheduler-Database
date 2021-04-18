-- Misc https://www.mssqltips.com/sqlservertip/5303/simple-sql-server-function-to-generate-random-8-character-password/
DROP VIEW vRandom;
DROP FUNCTION GenPass;
GO

CREATE VIEW vRandom
AS
SELECT randval = CRYPT_GEN_RANDOM (6)
GO

CREATE FUNCTION [dbo].[GenPass]()
RETURNS VARCHAR(8)
AS
BEGIN
   -- Declare the variables here
   DECLARE @Result VARCHAR(6)
   DECLARE @BinaryData VARBINARY(6)
   DECLARE @CharacterData VARCHAR(6)
 
   SELECT @BinaryData = randval
   FROM vRandom
 
   Set @CharacterData=cast ('' as xml).value ('xs:base64Binary(sql:variable("@BinaryData"))',
                   'varchar (max)')
   
   SET @Result = @CharacterData
   
   -- Return the result of the function
   RETURN @Result
END
GO

-- Delete existing stored procedures
DROP PROC AddProfessional;
DROP PROC GetProfessional;
DROP PROC GetProfessionalByShareableCode;
DROP PROC GetProfessionalTimeSlots;
DROP PROC GetProfessionalAppointments;
DROP PROC RemoveProfessional;
DROP PROC UpdateProfessional;

DROP PROC AddClient;
DROP PROC AddClientFavorite;
DROP PROC GetClient;
DROP PROC GetClientFavorites;
DROP PROC GetClientAppointments;
DROP PROC UpdateClient;
DROP PROC RemoveClient;
DROP PROC RemoveClientFavorite;

DROP PROC AddTimeSlot;
DROP PROC RemoveTimeSlot;

DROP PROC AddAppointment;
DROP PROC RemoveAppointment;
DROP PROC UpdateAppointment;

-- Delete existing database
DROP TABLE Appointment;
DROP TABLE ClientFavoriteProfessional;
DROP TABLE Client;
DROP TABLE TimeSlot;
DROP TABLE Professional;

-- Create tables
CREATE TABLE Professional
(
	FirebaseUid NVARCHAR(255) NOT NULL, 
	FirstName NVARCHAR(255) NOT NULL,
	LastName NVARCHAR(255) NOT NULL,
	Occupation NVARCHAR(255) NOT NULL,
	ShareableCode NVARCHAR(255) NOT NULL,
	StreetNumber INT NOT NULL, 
	StreetName NVARCHAR(255) NOT NULL, 
	City NVARCHAR(255) NOT NULL, 
	StateName NVARCHAR(255) NOT NULL, 
	ZipCode INT NOT NULL,
	CONSTRAINT PK_Professional PRIMARY KEY(FirebaseUid)
);

CREATE TABLE TimeSlot
(
	TimeSlotId INT Identity(1, 1) NOT NULL, 
	ProfessionalId NVARCHAR(255) NOT NULL,
	StartTime DateTime2 NOT NULL,
	EndTime DateTime2 NOT NULL,
	CONSTRAINT PK_TimeSlot PRIMARY KEY(TimeSlotId),
	CONSTRAINT FK_ProfessionalId FOREIGN KEY(ProfessionalId) REFERENCES Professional(FirebaseUid)
);

CREATE TABLE Client
(
	FirebaseUid NVARCHAR(255) NOT NULL, 
	FirstName NVARCHAR(255) NOT NULL,
	LastName NVARCHAR(255) NOT NULL,
	CONSTRAINT PK_Client PRIMARY KEY(FirebaseUid)
);

CREATE TABLE ClientFavoriteProfessional
(
	ClientUid NVARCHAR(255) NOT NULL,
	ProfessionalUid NVARCHAR(255) NOT NULL,
	CONSTRAINT FK_ClientFavoriteProfessional_ClientId FOREIGN KEY(ClientUid) REFERENCES Client(FirebaseUid),
	CONSTRAINT FK_ClientFavoriteProfessional_ProfessionalId FOREIGN KEY(ProfessionalUid) REFERENCES Professional(FirebaseUid)
); 

CREATE TABLE Appointment
(
	ClientId NVARCHAR(255) NOT NULL,
	TimeSlotId INT NOT NULL,
	AppointmentName NVARCHAR(255) NOT NULL,
	AppointmentDescription NVARCHAR(255) NOT NULL,
	CONSTRAINT FK_Appointment_ClientId FOREIGN KEY(ClientId) REFERENCES Client(FirebaseUid),
	CONSTRAINT FK_Appointment_TimeSlotId FOREIGN KEY(TimeSlotId) REFERENCES TimeSlot(TimeSlotId),
); 
GO

-- Create stored procedures
/*
Professional stored procedures
	AddProfessional
	GetProfessional
	GetProfessionalByShareableCode
	GetProfessionalTimeSlots
	GetProfessionalAppointments
	RemoveProfessional
	UpdateProfessional
*/

CREATE PROC AddProfessional @FirebaseUid NVARCHAR(255), @FirstName NVARCHAR(255), @LastName NVARCHAR(255), @Occupation NVARCHAR(255), @StreetNumber INT, @StreetName NVARCHAR(255), @State NVARCHAR(255), @City NVARCHAR(255), @ZipCode INT
AS
	INSERT INTO Professional(FirebaseUid, FirstName, LastName, Occupation, ShareableCode, StreetNumber, StreetName, City, StateName, ZipCode) 
		VALUES(@FirebaseUid, @FirstName, @LastName, @Occupation, dbo.GenPass(), @StreetNumber, @StreetName, @State, @City, @ZipCode);
GO

CREATE PROC GetProfessional @FirebaseUid NVARCHAR(255)
AS
	SELECT FirebaseUid, FirstName, LastName, Occupation, ShareableCode, StreetNumber, StreetName, City, StateName AS State, ZipCode
	FROM Professional
	WHERE @FirebaseUid = FirebaseUid;
GO

CREATE PROC GetProfessionalByShareableCode @ShareableCode NVARCHAR(255)
AS
	SELECT FirebaseUid, FirstName, LastName, Occupation, ShareableCode, StreetNumber, StreetName, City, StateName AS State, ZipCode
	FROM Professional
	WHERE @ShareableCode = ShareableCode;
GO

CREATE PROC GetProfessionalTimeSlots @FirebaseUid NVARCHAR(255)
AS
	SELECT FirebaseUid, TimeSlotId, StartTime, EndTime
	FROM Professional JOIN TimeSlot ON(FirebaseUid = ProfessionalId)
	WHERE @FirebaseUid = FirebaseUid;
GO

CREATE PROC GetProfessionalAppointments @FirebaseUid NVARCHAR(255)
AS
	SELECT Professional.FirebaseUid AS ProfessionalUid, StartTime, EndTime, AppointmentName, AppointmentDescription, Client.FirebaseUid AS ClientUid, Client.FirstName AS ClientFirstName, Client.LastName AS ClientLastName
	FROM Professional JOIN TimeSlot ON(FirebaseUid = ProfessionalId) JOIN Appointment ON(TimeSlot.TimeSlotId = Appointment.TimeSlotId) JOIN Client ON(Appointment.ClientId = Client.FirebaseUid)
	WHERE @FirebaseUid = Professional.FirebaseUid;
GO

CREATE PROC RemoveProfessional @FirebaseUid NVARCHAR(255)
AS
	DELETE FROM Appointment
	WHERE TimeSlotId = (SELECT Appointment.TimeSlotId FROM Appointment JOIN TimeSlot ON(Appointment.TimeSlotId = TimeSlot.TimeSlotId) JOIN Professional ON(TimeSlot.ProfessionalId = Professional.FirebaseUid) WHERE @FirebaseUid = Professional.FirebaseUid)
	DELETE FROM TimeSlot
	WHERE TimeSlotId = (SELECT TimeSlotId FROM TimeSlot JOIN Professional ON(TimeSlot.ProfessionalId = Professional.FirebaseUid) WHERE @FirebaseUid = Professional.FirebaseUid)
	DELETE FROM Professional
	WHERE @FirebaseUid = Professional.FirebaseUid;
GO

CREATE PROC UpdateProfessional @FirebaseUid NVARCHAR(255), @FirstName NVARCHAR(255), @LastName NVARCHAR(255), @Occupation NVARCHAR(255), @StreetNumber INT, @StreetName NVARCHAR(255), @State NVARCHAR(255), @City NVARCHAR(255), @ZipCode INT
AS
	UPDATE Professional 
	SET FirebaseUid = @FirebaseUid, FirstName = @FirstName, LastName = @LastName, Occupation = @Occupation, StreetNumber = @StreetNumber, StreetName = @StreetName, StateName = @State, City = @City, ZipCode = @ZipCode
	WHERE @FirebaseUid = Professional.FirebaseUid;
GO

/*
Client stored procedures
	AddClient
	AddClientFavorite
	GetClient
	GetClientFavorites
	GetClientAppointments
	UpdateClient
	RemoveClient
	RemoveClientFavorite
*/

CREATE PROC AddClient @FirebaseUid NVARCHAR(255), @FirstName NVARCHAR(255), @LastName NVARCHAR(255)
AS
	INSERT INTO Client(FirebaseUid, FirstName, LastName) 
	VALUES(@FirebaseUid, @FirstName, @LastName);
GO

CREATE PROC AddClientFavorite @ClientFirebaseUid NVARCHAR(255),  @ProfessionalFirebaseUid NVARCHAR(255)
AS
	INSERT INTO ClientFavoriteProfessional(ClientUid, ProfessionalUid) 
	VALUES(@ClientFirebaseUid, @ProfessionalFirebaseUid);
GO

CREATE PROC GetClient @FirebaseUid NVARCHAR(255)
AS
	SELECT FirebaseUid, FirstName, LastName
	FROM Client
	WHERE @FirebaseUid = FirebaseUid;
GO

CREATE PROC GetClientFavorites @FirebaseUid NVARCHAR(255) 
AS
	SELECT ClientFavoriteProfessional.ProfessionalUid AS ProfessionalFirebaseUid, FirstName, LastName, Occupation, ShareableCode, StreetNumber, StreetName, City, StateName AS State, ZipCode
	FROM ClientFavoriteProfessional JOIN Professional ON(ClientFavoriteProfessional.ProfessionalUid = Professional.FirebaseUid)
	WHERE @FirebaseUid = ClientUid;
GO

CREATE PROC GetClientAppointments @FirebaseUid NVARCHAR(255)
AS
	SELECT Appointment.TimeSlotId, Appointment.AppointmentName, Appointment.AppointmentDescription, StartTime, EndTime, Professional.FirstName AS ProfessionalFirstName, Professional.LastName AS ProfessionalLastName, Occupation, ShareableCode, StreetNumber, StreetName, City, StateName AS State, ZipCode
	FROM Appointment JOIN TimeSlot ON(Appointment.TimeSlotId = TimeSlot.TimeSlotId) JOIN Professional ON(TimeSlot.ProfessionalId = Professional.FirebaseUid)
	WHERE @FirebaseUid = ClientId;
GO

CREATE PROC UpdateClient @FirebaseUid NVARCHAR(255), @FirstName NVARCHAR(255), @LastName NVARCHAR(255)
AS
	UPDATE Client
	SET FirebaseUid = @FirebaseUid, FirstName = @FirstName, LastName = @LastName
	WHERE @FirebaseUid = FirebaseUid;
GO

CREATE PROC RemoveClient @FirebaseUid NVARCHAR(255)
AS
	DELETE FROM Appointment
	WHERE @FirebaseUid = ClientId;
	DELETE FROM Client
	WHERE @FirebaseUid = FirebaseUid;
GO

CREATE PROC RemoveClientFavorite @ClientFirebaseUid NVARCHAR(255), @ProfessionalFirebaseUid NVARCHAR(255)
AS
	DELETE FROM ClientFavoriteProfessional
	WHERE @ClientFirebaseUid = ClientUid AND @ProfessionalFirebaseUid = ProfessionalUid;
GO

/*
TimeSlot stored procedures
	AddTimeSlot
	RemoveTimeSlot
*/
CREATE PROC AddTimeSlot @ProfessionalFirebaseUid NVARCHAR(255), @StartTime DATETIME2, @EndTime DATETIME2
AS
	INSERT INTO TimeSlot(ProfessionalId, StartTime, EndTime)
		VALUES(@ProfessionalFirebaseUid, @StartTime, @EndTime);
GO

CREATE PROC RemoveTimeSlot @TimeSlotId NVARCHAR(255)
AS
	DELETE FROM TimeSlot
	WHERE @TimeSlotId = TimeSlotId;
GO

/*
Appointment stored procedures
	AddAppointment
	RemoveAppointment
	UpdateAppointment
*/

CREATE PROC AddAppointment @ClientFirebaseUid NVARCHAR(255), @TimeSlotId NVARCHAR(255),  @Name NVARCHAR(255),  @Description NVARCHAR(255)
AS
	INSERT INTO Appointment(ClientId, TimeSlotId, AppointmentName, AppointmentDescription)
		VALUES(@ClientFirebaseUid, @TimeSlotId, @Name, @Description);
GO

CREATE PROC RemoveAppointment @TimeSlotId NVARCHAR(255)
AS
	DELETE FROM Appointment
	WHERE @TimeSlotId = TimeSlotId;
GO

CREATE PROC UpdateAppointment  @TimeSlotId NVARCHAR(255), @Name NVARCHAR(255),  @Description NVARCHAR(255)
AS
	UPDATE Appointment
		SET AppointmentName = @Name, @Description = @Description
	WHERE @TimeSlotId = TimeSlotId
GO
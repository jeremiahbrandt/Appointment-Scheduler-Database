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
DROP PROCEDURE Get_Professional;
DROP PROCEDURE Get_Professional_TimeSlots;
DROP PROCEDURE Get_Professional_Appointments;
DROP PROCEDURE Create_Professional;
DROP PROCEDURE Get_Client_Favorites;
DROP PROCEDURE Get_Client_Appointments;
DROP PROCEDURE Create_Client;

-- Delete existing database
DROP TABLE Appointment;
DROP TABLE ClientFavoriteProfessional;
DROP TABLE Client;
DROP TABLE TimeSlot;
DROP TABLE Professional;
DROP TABLE ProfessionalAddress;

-- Create tables
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
	ProfessionalUid NVARCHAR(255) NOT NULL, 
	ProfessionalAddressId int,
	Occupation NVARCHAR(255),
	ShareableCode NVARCHAR(255),
	CONSTRAINT PK_Professional PRIMARY KEY(ProfessionalUid),
	CONSTRAINT FK_AddressId FOREIGN KEY(ProfessionalAddressId) REFERENCES ProfessionalAddress(ProfessionalAddressId)
);

CREATE TABLE TimeSlot
(
	TimeSlotId int Identity(1, 1) NOT NULL, 
	ProfessionalUid NVARCHAR(255),
	StartTime DateTime2,
	EndTime DateTime2,
	CONSTRAINT PK_TimeSlot PRIMARY KEY(TimeSlotId),
	CONSTRAINT FK_ProfessionalId FOREIGN KEY(ProfessionalUid) REFERENCES Professional(ProfessionalUid)
);
CREATE TABLE Client
(
	ClientUid  NVARCHAR(255) NOT NULL, 
	CONSTRAINT PK_Client PRIMARY KEY(ClientUid)
);

CREATE TABLE ClientFavoriteProfessional
(
	ClientUid NVARCHAR(255),
	ProfessionalUid NVARCHAR(255),
	CONSTRAINT FK_ClientFavoriteProfessional_ClientId FOREIGN KEY(ClientUid) REFERENCES Client(ClientUid),
	CONSTRAINT FK_ClientFavoriteProfessional_ProfessionalId FOREIGN KEY(ProfessionalUid) REFERENCES Professional(ProfessionalUid)
); 

CREATE TABLE Appointment
(
	AppointmentId int Identity(1, 1) NOT NULL,
	ClientUid NVARCHAR(255),
	ProfessionalUid NVARCHAR(255),
	TimeSlotId int,
	AppointmentName NVARCHAR(255),
	AppointmentDescription NVARCHAR(255),
	AppointmentLocation NVARCHAR(255),
	CONSTRAINT PK_Appointment PRIMARY KEY(AppointmentId),
	CONSTRAINT FK_Appointment_ClientId FOREIGN KEY(ClientUid) REFERENCES Client(ClientUid),
	CONSTRAINT FK_Appointment_ProfessionalId FOREIGN KEY(ProfessionalUid) REFERENCES Professional(ProfessionalUid),
	CONSTRAINT FK_Appointment_TimeSlotId FOREIGN KEY(TimeSlotId) REFERENCES TimeSlot(TimeSlotId),
); 
GO

-- Create stored procedures
-- Professional stored procedures
CREATE PROC Get_Professional @Uid NVARCHAR(255)
AS
SELECT Occupation, StreetNumber, StreetName, City, StateName, ZipCode
FROM Professional JOIN ProfessionalAddress ON (Professional.ProfessionalAddressId = ProfessionalAddress.ProfessionalAddressId)
WHERE Professional.ProfessionalUid = @Uid;
GO

CREATE PROC Get_Professional_TimeSlots @Uid NVARCHAR(255)
AS
SELECT StartTime, EndTime 
FROM Professional JOIN TimeSlot ON(Professional.ProfessionalUid = TimeSlot.ProfessionalUid)
WHERE Professional.ProfessionalUid = @Uid;
GO

CREATE PROC Get_Professional_Appointments @Uid NVARCHAR(255)
AS
SELECT AppointmentName AS Name, AppointmentDescription AS Description, AppointmentLocation AS Location, StartTime, EndTime, ClientUid
FROM Professional JOIN TimeSlot ON(Professional.ProfessionalUid = TimeSlot.ProfessionalUid) JOIN Appointment ON(Professional.ProfessionalUid = Appointment.AppointmentId)
WHERE Professional.ProfessionalUid = @Uid;
GO

CREATE PROC Create_Professional @Uid NVARCHAR(255), @Occupation NVARCHAR(255), @StreetNumber INT, @StreetName NVARCHAR(255), @State NVARCHAR(255), @City NVARCHAR(255), @ZipCode INT
AS
INSERT INTO ProfessionalAddress VALUES(@StreetNumber, @StreetName, @State, @City, @ZipCode);
INSERT INTO Professional VALUES(@Uid, SCOPE_IDENTITY(), @Occupation, dbo.GenPass());
GO

-- Client stored procedures
CREATE PROC Get_Client_Favorites @Uid NVARCHAR(255)
AS
SELECT Client.ClientUid, Professional.ProfessionalUid, Occupation, StreetNumber as Street, StateName as State, City, StateName as State, ZipCode
FROM Client JOIN ClientFavoriteProfessional ON(Client.ClientUid = ClientFavoriteProfessional.ClientUid) JOIN Professional ON(ClientFavoriteProfessional.ProfessionalUid = Professional.ProfessionalUid) JOIN ProfessionalAddress ON (Professional.ProfessionalAddressId = ProfessionalAddress.ProfessionalAddressId)
WHERE Client.ClientUid = @Uid;
GO

CREATE PROC Get_Client_Appointments @Uid NVARCHAR(255)
AS
SELECT *
FROM Client JOIN Appointment ON(Client.ClientUid = Appointment.ClientUid) JOIN TimeSlot ON(Appointment.TimeSlotId = TimeSlot.TimeSlotId)
WHERE Client.ClientUid = @Uid;
GO

CREATE PROC Create_Client @Uid NVARCHAR(255)
AS
INSERT INTO Client VALUES(@Uid);
GO

-- Populate tables
EXEC Create_Professional @Uid = 1000, @Occupation = "Farmer", @StreetNumber = 123456, @StreetName = "Highway Z", @State = "MO", @City = "Sedalia", @ZipCode = 65301;
EXEC Create_Professional @Uid = 1001, @Occupation = "Tesla CEO", @StreetNumber = 3500, @StreetName = "Deer Creek Road", @City = "Palo Alto", @State = "CA", @ZipCode = 94304;
EXEC Create_Professional @Uid = "jujn29xtzo", @Occupation = "Jeweller", @StreetNumber = 8937, @StreetName = "Livingston Lane", @City = "Tucker", @State ="GA", @ZipCode = 30084;
EXEC Create_Professional @Uid = "8d5l24znck", @Occupation = "Florist", @StreetNumber = 7581, @StreetName = "South High Point Lane", @City = "Rockville", @State ="MD", @ZipCode = 20850;
EXEC Create_Professional @Uid = "8gm798lxzc", @Occupation = "Teacher", @StreetNumber = 7825, @StreetName = "Longfellow Road", @City = "Dothan", @State ="AL", @ZipCode = 36301;
EXEC Create_Professional @Uid = "5qr3vu2mp4", @Occupation = "Jeweller", @StreetNumber = 10, @StreetName = "Country Club Ave.", @City = "Elizabeth", @State ="NJ", @ZipCode = 07202;
EXEC Create_Professional @Uid = "nfy5d2ac6p", @Occupation = "Baker", @StreetNumber = 9393, @StreetName = "Hall Lane", @City = "Burbank", @State ="IL", @ZipCode = 60459;
EXEC Create_Professional @Uid = "gnvzug1u5c", @Occupation = "Producer", @StreetNumber = 31, @StreetName = "S. Hickory Dr.", @City = "Simpsonville", @State ="SC", @ZipCode = 29680;
EXEC Create_Professional @Uid = "pzpo28946w", @Occupation = " Police_Officer", @StreetNumber = 8169, @StreetName = "East St.", @City = "Laurel", @State ="MD", @ZipCode = 20707;
EXEC Create_Professional @Uid = "fru58ryelj", @Occupation = "Interior_Designer", @StreetNumber = 9, @StreetName = "Williams Drive", @City = "Raleigh", @State ="NC", @ZipCode = 27603;
EXEC Create_Professional @Uid = "cjx7e9xyr6", @Occupation = "Mechanic", @StreetNumber = 33, @StreetName = "Granite Drive Staten", @City = "Island", @State ="NY", @ZipCode = 10301;
EXEC Create_Professional @Uid = "8dkfoi9msh", @Occupation = "Manager", @StreetNumber = 9763, @StreetName = "Eagle Street", @City = "Yakima", @State ="WA", @ZipCode = 98908;
EXEC Create_Professional @Uid = "s25lvulycb", @Occupation = "Composer", @StreetNumber = 9, @StreetName = "Bradford Dr.", @City = "Menasha", @State ="WI", @ZipCode = 54952;
EXEC Create_Professional @Uid = "dm7fqv4cp5", @Occupation = " Police_Officer", @StreetNumber = 410, @StreetName = "Beaver Dr.", @City = "Addison", @State ="IL", @ZipCode = 60101;
EXEC Create_Professional @Uid = "77w1yd6p3l", @Occupation = "Scientist", @StreetNumber = 1, @StreetName = "Parkview St.", @City = "Muskegon", @State ="MI", @ZipCode = 49441;
EXEC Create_Professional @Uid = "4866m40tke", @Occupation = "Interior_Designer", @StreetNumber = 354, @StreetName = "Bay View St. Harrison", @City = "Township", @State ="MI", @ZipCode = 48045;
EXEC Create_Professional @Uid = "h4qayvgj26", @Occupation = "Medic", @StreetNumber = 62, @StreetName = "N. Petal Lane Mount", @City = "Laurel", @State ="NJ", @ZipCode = 08054;
EXEC Create_Professional @Uid = "d31yjojki0", @Occupation = "Accountant", @StreetNumber = 32, @StreetName = "Grace St.", @City = "Riverview", @State ="FL", @ZipCode = 33569;
EXEC Create_Professional @Uid = "qiobg221mc", @Occupation = "Mechanic", @StreetNumber = 4, @StreetName = "East Feathers Rd.", @City = "Paramus", @State ="NJ", @ZipCode = 07652;
EXEC Create_Professional @Uid = "rulrtxj0bv", @Occupation = "Firefighter", @StreetNumber = 32, @StreetName = "Grand Dr.", @City = "Grayslake", @State ="IL", @ZipCode = 60030;
EXEC Create_Professional @Uid = "hd2rivojrm", @Occupation = "Scientist", @StreetNumber = 735, @StreetName = "Liberty St.", @City = "Kaukauna", @State ="WI", @ZipCode = 54130;
EXEC Create_Professional @Uid = "38grpr2e9y", @Occupation = "Manager", @StreetNumber = 46, @StreetName = "Gainsway St. Green Cove", @City = "Springs", @State ="FL", @ZipCode = 32043;
EXEC Create_Professional @Uid = "ptyxla8t1u", @Occupation = "Programmer", @StreetNumber = 410, @StreetName = "N. Gregory St. Saint", @City = "Cloud", @State ="MN", @ZipCode = 56301;
EXEC Create_Professional @Uid = "sbua4h62px", @Occupation = "Salesman", @StreetNumber = 761, @StreetName = "New Castle St.", @City = "Montgomery", @State ="AL", @ZipCode = 36109;
EXEC Create_Professional @Uid = "m4zt8a66j2", @Occupation = "Archeologist", @StreetNumber = 314, @StreetName = "Fieldstone Street", @City = "Wheeling", @State ="WV", @ZipCode = 26003;
EXEC Create_Professional @Uid = "ujcbn51kqh", @Occupation = "Manager", @StreetNumber = 94, @StreetName = "Woodland St. Redondo", @City = "Beach", @State ="CA", @ZipCode = 90278;
EXEC Create_Professional @Uid = "w0hyjk3yfx", @Occupation = "Agronomist", @StreetNumber = 7336, @StreetName = "South National St.", @City = "Norcross", @State ="GA", @ZipCode = 30092;
EXEC Create_Professional @Uid = "k5nlfoywb0", @Occupation = "Firefighter", @StreetNumber = 839, @StreetName = "Seacoast Lane", @City = "Tuscaloosa", @State ="AL", @ZipCode = 35405;
EXEC Create_Professional @Uid = "vlx4mrmoq4", @Occupation = "Mechanic", @StreetNumber = 85, @StreetName = "Sycamore Ave. North", @City = "Kingstown", @State ="RI", @ZipCode = 02852;
EXEC Create_Professional @Uid = "ci7uk6l572", @Occupation = "Chef", @StreetNumber = 879, @StreetName = "West Ridgewood Road", @City = "Huntersville", @State ="NC", @ZipCode = 28078;
EXEC Create_Professional @Uid = "tvyr7re42v", @Occupation = "Engineer", @StreetNumber = 7216, @StreetName = "Sheffield Drive", @City = "Lithonia", @State ="GA", @ZipCode = 30038;
EXEC Create_Professional @Uid = "miszt7zqvw", @Occupation = "Accountant", @StreetNumber = 577, @StreetName = "Mechanic Street", @City = "Sarasota", @State ="FL", @ZipCode = 34231;
EXEC Create_Professional @Uid = "irlbwi1up4", @Occupation = "Singer", @StreetNumber = 8406, @StreetName = "Blue Spring Lane Iowa", @City = "City", @State ="IA", @ZipCode = 52240;
EXEC Create_Professional @Uid = "systpy9jnt", @Occupation = "Hairdresser", @StreetNumber = 796, @StreetName = "NE. Sugar Road Benton", @City = "Harbor", @State ="MI", @ZipCode = 49022;
EXEC Create_Professional @Uid = "i23mz0kccw", @Occupation = "Dancer", @StreetNumber = 865, @StreetName = "Greystone Ave. Manchester", @City = "Township", @State ="NJ", @ZipCode = 08759;
EXEC Create_Professional @Uid = "3qwa5t3bqw", @Occupation = "Meteorologist", @StreetNumber = 974, @StreetName = "Hall Rd.", @City = "Ashburn", @State ="VA", @ZipCode = 20147;
EXEC Create_Professional @Uid = "ln071i7wod", @Occupation = "Dancer", @StreetNumber = 411, @StreetName = "Front Drive", @City = "Tuckerton", @State ="NJ", @ZipCode = 08087;
EXEC Create_Professional @Uid = "odxx0if76n", @Occupation = "Chef", @StreetNumber = 219, @StreetName = "E. Beechwood Dr. Great", @City = "Falls", @State ="MT", @ZipCode = 59404;
EXEC Create_Professional @Uid = "f8ywcks9zx", @Occupation = "Social", @StreetNumber = 23, @StreetName = "West Oak Valley Street North", @City = "Kingstown", @State ="RI", @ZipCode = 02852;
EXEC Create_Professional @Uid = "h0n85cn60n", @Occupation = "Architect", @StreetNumber = 9802, @StreetName = "Anchor Court", @City = "Memphis", @State ="TN", @ZipCode = 38106;
EXEC Create_Professional @Uid = "1q13gwze7l", @Occupation = "Singer", @StreetNumber = 584, @StreetName = "Big Rock Cove St.", @City = "Englishtown", @State ="NJ", @ZipCode = 07726;
EXEC Create_Professional @Uid = "z5iohr0h9j", @Occupation = "Social_Worker", @StreetNumber = 827, @StreetName = "Petal Drive", @City = "Lincoln", @State ="NE", @ZipCode = 68506;
EXEC Create_Professional @Uid = "e7u3pm8n08", @Occupation = "Producer", @StreetNumber = 410, @StreetName = "N. Gregory St. Saint", @City = "Cloud", @State ="MN", @ZipCode = 56301;
EXEC Create_Professional @Uid = "hxq1ahex8l", @Occupation = "Florist", @StreetNumber = 761, @StreetName = "New Castle St.", @City = "Montgomery", @State ="AL", @ZipCode = 36109;
EXEC Create_Professional @Uid = "7r7sl42vhp", @Occupation = "Social", @StreetNumber = 314, @StreetName = "Fieldstone Street", @City = "Wheeling", @State ="WV", @ZipCode = 26003;
EXEC Create_Professional @Uid = "78pf3abhg0", @Occupation = "Archeologist", @StreetNumber = 94, @StreetName = "Woodland St. Redondo", @City = "Beach", @State ="CA", @ZipCode = 90278;
EXEC Create_Professional @Uid = "l4fym48ewq", @Occupation = "Florist", @StreetNumber = 7336, @StreetName = "South National St.", @City = "Norcross", @State ="GA", @ZipCode = 30092;
EXEC Create_Professional @Uid = "fvodebwntu", @Occupation = "Chef", @StreetNumber = 839, @StreetName = "Seacoast Lane", @City = "Tuscaloosa", @State ="AL", @ZipCode = 35405;
EXEC Create_Professional @Uid = "vuvjz0qo79", @Occupation = "Auditor", @StreetNumber = 85, @StreetName = "Sycamore Ave. North", @City = "Kingstown", @State ="RI", @ZipCode = 02852;
EXEC Create_Professional @Uid = "eyv8qwy848", @Occupation = "Auditor", @StreetNumber = 879, @StreetName = "West Ridgewood Road", @City = "Huntersville", @State ="NC", @ZipCode = 28078;
EXEC Create_Professional @Uid = "mnzyyp55ag", @Occupation = "Programmer", @StreetNumber = 7216, @StreetName = "Sheffield Drive", @City = "Lithonia", @State ="GA", @ZipCode = 30038;
EXEC Create_Professional @Uid = "oewk5vfqsc", @Occupation = "Cook", @StreetNumber = 577, @StreetName = "Mechanic Street", @City = "Sarasota", @State ="FL", @ZipCode = 34231;
EXEC Create_Professional @Uid = "j7gkyxp8dy", @Occupation = "Mathematician", @StreetNumber = 8406, @StreetName = "Blue Spring Lane Iowa", @City = "City", @State ="IA", @ZipCode = 52240;
EXEC Create_Professional @Uid = "kwzd1t6dw7", @Occupation = "Jeweller", @StreetNumber = 796, @StreetName = "NE. Sugar Road Benton", @City = "Harbor", @State ="MI", @ZipCode = 49022;
EXEC Create_Professional @Uid = "4wirrwoeje", @Occupation = "Astronomer", @StreetNumber = 865, @StreetName = "Greystone Ave. Manchester", @City = "Township", @State ="NJ", @ZipCode = 08759;
EXEC Create_Professional @Uid = "8wtlh6ombx", @Occupation = "Agronomist", @StreetNumber = 974, @StreetName = "Hall Rd.", @City = "Ashburn", @State ="VA", @ZipCode = 20147;
EXEC Create_Professional @Uid = "n6f7xo1jxh", @Occupation = "Biochemist", @StreetNumber = 411, @StreetName = "Front Drive", @City = "Tuckerton", @State ="NJ", @ZipCode = 08087;
EXEC Create_Professional @Uid = "y0oz64mcag", @Occupation = "Insurer", @StreetNumber = 219, @StreetName = "E. Beechwood Dr. Great", @City = "Falls", @State ="MT", @ZipCode = 59404;
EXEC Create_Professional @Uid = "dlhkptu0ks", @Occupation = "Insurer", @StreetNumber = 23, @StreetName = "West Oak Valley Street North", @City = "Kingstown", @State ="RI", @ZipCode = 02852;
EXEC Create_Professional @Uid = "jlk9clxrzq", @Occupation = "Chemist", @StreetNumber = 9802, @StreetName = "Anchor Court", @City = "Memphis", @State ="TN", @ZipCode = 38106;
EXEC Create_Professional @Uid = "u25t1ij9ul", @Occupation = "Meteorologist", @StreetNumber = 584, @StreetName = "Big Rock Cove St.", @City = "Englishtown", @State ="NJ", @ZipCode = 07726;
EXEC Create_Professional @Uid = "qrwyyamhmf", @Occupation = "Engineer", @StreetNumber = 827, @StreetName = "Petal Drive", @City = "Lincoln", @State ="NE", @ZipCode = 68506;

EXEC Create_Client @Uid = 200;
EXEC Create_Client @Uid = 201;
EXEC Create_Client @Uid = 202;
EXEC Create_Client @Uid = 203;
EXEC Create_Client @Uid = 204;
EXEC Create_Client @Uid = 205;
EXEC Create_Client @Uid = 206;
EXEC Create_Client @Uid = 207;
EXEC Create_Client @Uid = 208;
EXEC Create_Client @Uid = 209;
EXEC Create_Client @Uid = 210;
EXEC Create_Client @Uid = 211;
EXEC Create_Client @Uid = 212;
EXEC Create_Client @Uid = 213;
EXEC Create_Client @Uid = 214;
EXEC Create_Client @Uid = 215;
EXEC Create_Client @Uid = 216;
EXEC Create_Client @Uid = 217;
EXEC Create_Client @Uid = 218;
EXEC Create_Client @Uid = 219;

-- Test to make sure the tables were created
SELECT * FROM Professional;
SELECT * FROM ProfessionalAddress;
SELECT * FROM TimeSlot;
SELECT * FROM Client;
SELECT * FROM ClientFavoriteProfessional;
SELECT * FROM Appointment;

EXEC  Get_Professional_Appointments @Uid = 0;
EXEC Get_Client_Favorites @Uid = 0;
EXEC Get_Client_Appointments @Uid = 0;
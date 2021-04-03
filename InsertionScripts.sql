-- Professionals
EXEC AddProfessional @FirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @FirstName = "John", @LastName = "Doe", @Occupation = "Jeweller", @StreetNumber = 8937, @StreetName = "Livingston Lane", @City = "Tucker", @State ="GA", @ZipCode = 30084;
EXEC AddProfessional @FirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @FirstName = "Jane", @LastName = "Smith", @Occupation = "Florist", @StreetNumber = 7581, @StreetName = "South High Point Lane", @City = "Rockville", @State ="MD", @ZipCode = 20850;
EXEC AddProfessional @FirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @FirstName = "Robert", @LastName = "Brown", @Occupation = "Teacher", @StreetNumber = 7825, @StreetName = "Longfellow Road", @City = "Dothan", @State ="AL", @ZipCode = 36301;
EXEC AddProfessional @FirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @FirstName = "Linda", @LastName = "Williams", @Occupation = "Baker", @StreetNumber = 9393, @StreetName = "Hall Lane", @City = "Burbank", @State ="IL", @ZipCode = 60459;
EXEC AddProfessional @FirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @FirstName = "Michael", @LastName = "Davis", @Occupation = "Producer", @StreetNumber = 31, @StreetName = "S. Hickory Dr.", @City = "Simpsonville", @State ="SC", @ZipCode = 29680;

-- Clients
EXEC AddClient @FirebaseUid = "x45mZ9SUWoTUgRagvruOSrIemgI2", @FirstName = "James", @LastName = "Wilson";
EXEC AddClient @FirebaseUid = "GDV7Ahs83HbyK9TpOd459REfQHz2", @FirstName = "Mary", @LastName = "Anderson";
EXEC AddClient @FirebaseUid = "k0FPafEy7qfli4nDs0zbXb0FKXP2", @FirstName = "Richard", @LastName = "Thomas";
EXEC AddClient @FirebaseUid = "m0PRmKMottO5OAV1KVQDUUlA4ga2", @FirstName = "Jennifer", @LastName = "Taylor";
EXEC AddClient @FirebaseUid = "IYO0KWOwS7fy1IB9pHkywxrFPut2", @FirstName = "Joseph", @LastName = "Moore";

-- Client Favorites
EXEC AddClientFavorite @ClientFirebaseUid = "x45mZ9SUWoTUgRagvruOSrIemgI2",  @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2";
EXEC AddClientFavorite @ClientFirebaseUid = "x45mZ9SUWoTUgRagvruOSrIemgI2",  @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2";
EXEC AddClientFavorite @ClientFirebaseUid = "x45mZ9SUWoTUgRagvruOSrIemgI2",  @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2";

--TimeSlots
-- Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 17:00:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 17:00:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 17:00:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 17:00:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SVqVVvLxlZQinsSHruz3BgWCdSC2", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 17:00:00';

-- Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 08:30:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 09:30:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 10:30:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 11:30:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 12:30:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 13:30:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 14:30:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 15:30:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 16:30:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 08:30:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 09:30:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 10:30:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 11:30:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 12:30:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 13:30:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 14:30:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 15:30:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 16:30:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 08:30:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 09:30:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 10:30:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 11:30:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 12:30:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 13:30:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 14:30:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 15:30:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 16:30:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 08:30:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 09:30:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 10:30:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 11:30:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 12:30:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 13:30:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 14:30:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 15:30:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 16:30:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 08:30:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 09:30:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 10:30:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 11:30:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 12:30:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 13:30:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 14:30:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 15:30:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "ZNgGM0VJRnTMP9GtP7FazQwv0sK2", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 16:30:00';

-- Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 08:30:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 09:30:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 10:30:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 11:30:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 12:30:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 13:30:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 14:30:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 15:30:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 16:30:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 08:30:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 09:30:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 10:30:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 11:30:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 12:30:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 13:30:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 14:30:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 15:30:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 16:30:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 08:30:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 09:30:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 10:30:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 11:30:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 12:30:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 13:30:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 14:30:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 15:30:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 16:30:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 08:30:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 09:30:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 10:30:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 11:30:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 12:30:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 13:30:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 14:30:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 15:30:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 16:30:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 08:30:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 09:30:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 10:30:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 11:30:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 12:30:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 13:30:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 14:30:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 15:30:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SgIXK7MTbfZo1Hzov5JVZLuet8d2", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 16:30:00';

-- Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 17:00:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 17:00:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 17:00:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 17:00:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "v1AFoLxIqFhIqaFpal2MYWUvLl72", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 17:00:00';

--Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 17:00:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 17:00:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 17:00:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 17:00:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "aYRoLSM9GOUt85P8eR2A8U4DO0w1", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 17:00:00';

-- Appointments
EXEC AddAppointment @ClientFirebaseUid = "x45mZ9SUWoTUgRagvruOSrIemgI2", @TimeSlotId = 1, @Name = "Appointment 1", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "GDV7Ahs83HbyK9TpOd459REfQHz2", @TimeSlotId = 15, @Name = "Appointment 2", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "GDV7Ahs83HbyK9TpOd459REfQHz2", @TimeSlotId = 20, @Name = "Appointment 4", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "GDV7Ahs83HbyK9TpOd459REfQHz2", @TimeSlotId = 32, @Name = "Appointment 5", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "m0PRmKMottO5OAV1KVQDUUlA4ga2", @TimeSlotId = 35, @Name = "Appointment 6", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "IYO0KWOwS7fy1IB9pHkywxrFPut2", @TimeSlotId = 3, @Name = "Appointment 7", @Description = "Some description will go here.";
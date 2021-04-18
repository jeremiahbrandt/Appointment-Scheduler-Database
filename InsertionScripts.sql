-- Professionals
EXEC AddProfessional @FirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @FirstName = "Test", @LastName = "Professional", @Occupation = "Tester", @StreetNumber = 8937, @StreetName = "Livingston Lane", @City = "Tucker", @State ="GA", @ZipCode = 30084;
EXEC AddProfessional @FirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @FirstName = "Jeremiah", @LastName = "Brandt", @Occupation = "Florist", @StreetNumber = 7581, @StreetName = "South High Point Lane", @City = "Rockville", @State ="MD", @ZipCode = 20850;
EXEC AddProfessional @FirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @FirstName = "Christian", @LastName = "Rivers", @Occupation = "Teacher", @StreetNumber = 7825, @StreetName = "Longfellow Road", @City = "Dothan", @State ="AL", @ZipCode = 36301;
EXEC AddProfessional @FirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @FirstName = "Nicolas", @LastName = "Allen", @Occupation = "Baker", @StreetNumber = 9393, @StreetName = "Hall Lane", @City = "Burbank", @State ="IL", @ZipCode = 60459;
EXEC AddProfessional @FirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @FirstName = "Nicolas 2", @LastName = "Allen", @Occupation = "Producer", @StreetNumber = 31, @StreetName = "S. Hickory Dr.", @City = "Simpsonville", @State ="SC", @ZipCode = 29680;

-- Clients
EXEC AddClient @FirebaseUid = "usUnOnKhBSYA4x6lvKy4Q8UUxvE2", @FirstName = "Test", @LastName = "Client";
EXEC AddClient @FirebaseUid = "GDV7Ahs83HbyK9TpOd459REfQHz2", @FirstName = "Mary", @LastName = "Anderson";
EXEC AddClient @FirebaseUid = "k0FPafEy7qfli4nDs0zbXb0FKXP2", @FirstName = "Richard", @LastName = "Thomas";
EXEC AddClient @FirebaseUid = "m0PRmKMottO5OAV1KVQDUUlA4ga2", @FirstName = "Jennifer", @LastName = "Taylor";
EXEC AddClient @FirebaseUid = "IYO0KWOwS7fy1IB9pHkywxrFPut2", @FirstName = "Joseph", @LastName = "Moore";

-- Client Favorites
EXEC AddClientFavorite @ClientFirebaseUid = "usUnOnKhBSYA4x6lvKy4Q8UUxvE2",  @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2";
EXEC AddClientFavorite @ClientFirebaseUid = "usUnOnKhBSYA4x6lvKy4Q8UUxvE2",  @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2";
EXEC AddClientFavorite @ClientFirebaseUid = "usUnOnKhBSYA4x6lvKy4Q8UUxvE2",  @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2";

--TimeSlots
-- Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 17:00:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 17:00:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 17:00:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 17:00:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "l8tAKH833FMXM0Wsv9U3yaEeAMI2", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 17:00:00';

-- Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 08:30:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 09:30:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 10:30:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 11:30:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 12:30:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 13:30:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 14:30:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 15:30:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 16:30:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 08:30:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 09:30:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 10:30:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 11:30:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 12:30:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 13:30:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 14:30:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 15:30:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 16:30:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 08:30:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 09:30:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 10:30:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 11:30:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 12:30:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 13:30:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 14:30:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 15:30:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 16:30:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 08:30:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 09:30:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 10:30:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 11:30:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 12:30:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 13:30:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 14:30:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 15:30:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 16:30:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 08:30:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 09:30:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 10:30:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 11:30:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 12:30:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 13:30:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 14:30:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 15:30:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "SvAwDTs1uXZPO3ukDWLAteQgl9t2", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 16:30:00';

-- Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 08:30:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 09:30:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 10:30:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 11:30:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 12:30:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 13:30:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 14:30:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 15:30:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 16:30:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 08:30:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 09:30:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 10:30:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 11:30:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 12:30:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 13:30:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 14:30:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 15:30:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 16:30:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 08:30:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 09:30:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 10:30:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 11:30:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 12:30:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 13:30:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 14:30:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 15:30:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 16:30:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 08:30:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 09:30:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 10:30:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 11:30:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 12:30:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 13:30:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 14:30:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 15:30:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 16:30:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 08:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 08:30:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 09:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 09:30:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 10:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 10:30:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 11:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 11:30:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 12:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 12:30:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 13:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 13:30:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 14:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 14:30:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 15:30:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 15:30:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "n3uLXBINyWUwjdVD4T1LE3rRCDd2", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 16:30:00';

-- Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 17:00:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 17:00:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 17:00:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 17:00:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "HpLykwD1aNfctE7jDP0HxGcBSOu1", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 17:00:00';

--Day 1
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-23 08:00:00', @EndTime='2021-05-23 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-23 09:00:00', @EndTime='2021-05-23 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-23 10:00:00', @EndTime='2021-05-23 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-23 11:00:00', @EndTime='2021-05-23 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-23 12:00:00', @EndTime='2021-05-23 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-23 13:00:00', @EndTime='2021-05-23 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-23 14:00:00', @EndTime='2021-05-23 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-23 15:00:00', @EndTime='2021-05-23 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-23 16:00:00', @EndTime='2021-05-23 17:00:00';
-- Day 2
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-24 08:00:00', @EndTime='2021-05-24 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-24 09:00:00', @EndTime='2021-05-24 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-24 10:00:00', @EndTime='2021-05-24 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-24 11:00:00', @EndTime='2021-05-24 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-24 12:00:00', @EndTime='2021-05-24 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-24 13:00:00', @EndTime='2021-05-24 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-24 14:00:00', @EndTime='2021-05-24 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-24 15:00:00', @EndTime='2021-05-24 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-24 16:00:00', @EndTime='2021-05-24 17:00:00';
-- Day 3
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-25 08:00:00', @EndTime='2021-05-25 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-25 09:00:00', @EndTime='2021-05-25 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-25 10:00:00', @EndTime='2021-05-25 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-25 11:00:00', @EndTime='2021-05-25 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-25 12:00:00', @EndTime='2021-05-25 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-25 13:00:00', @EndTime='2021-05-25 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-25 14:00:00', @EndTime='2021-05-25 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-25 15:00:00', @EndTime='2021-05-25 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-25 16:00:00', @EndTime='2021-05-25 17:00:00';
-- Day 4
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-26 08:00:00', @EndTime='2021-05-26 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-26 09:00:00', @EndTime='2021-05-26 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-26 10:00:00', @EndTime='2021-05-26 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-26 11:00:00', @EndTime='2021-05-26 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-26 12:00:00', @EndTime='2021-05-26 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-26 13:00:00', @EndTime='2021-05-26 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-26 14:00:00', @EndTime='2021-05-26 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-26 15:00:00', @EndTime='2021-05-26 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-26 16:00:00', @EndTime='2021-05-26 17:00:00';
-- Day 5
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-27 08:00:00', @EndTime='2021-05-27 09:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-27 09:00:00', @EndTime='2021-05-27 10:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-27 10:00:00', @EndTime='2021-05-27 11:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-27 11:00:00', @EndTime='2021-05-27 12:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-27 12:00:00', @EndTime='2021-05-27 13:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-27 13:00:00', @EndTime='2021-05-27 14:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-27 14:00:00', @EndTime='2021-05-27 15:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-27 15:00:00', @EndTime='2021-05-27 16:00:00';
EXEC AddTimeSlot @ProfessionalFirebaseUid = "BFve5ZJNoxVrtpSKcl5uHwYOKlG3", @StartTime='2021-05-27 16:00:00', @EndTime='2021-05-27 17:00:00';

-- Appointments
EXEC AddAppointment @ClientFirebaseUid = "usUnOnKhBSYA4x6lvKy4Q8UUxvE2", @TimeSlotId = 1, @Name = "Appointment 1", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "GDV7Ahs83HbyK9TpOd459REfQHz2", @TimeSlotId = 15, @Name = "Appointment 2", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "GDV7Ahs83HbyK9TpOd459REfQHz2", @TimeSlotId = 20, @Name = "Appointment 4", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "GDV7Ahs83HbyK9TpOd459REfQHz2", @TimeSlotId = 32, @Name = "Appointment 5", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "m0PRmKMottO5OAV1KVQDUUlA4ga2", @TimeSlotId = 35, @Name = "Appointment 6", @Description = "Some description will go here.";
EXEC AddAppointment @ClientFirebaseUid = "IYO0KWOwS7fy1IB9pHkywxrFPut2", @TimeSlotId = 3, @Name = "Appointment 7", @Description = "Some description will go here.";
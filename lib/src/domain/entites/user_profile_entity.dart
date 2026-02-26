
class UserProfileEntity {
  final int id;
  final String email;
  final String username;
  final String fullName;
  final String phone;

  // Address (flattened for domain simplicity)
  final String city;
  final String street;
  final int streetNumber;
  final String zipCode;

  // Geolocation
  final double latitude;
  final double longitude;

  const UserProfileEntity({
    required this.id,
    required this.email,
    required this.username,
    required this.fullName,
    required this.phone,
    required this.city,
    required this.street,
    required this.streetNumber,
    required this.zipCode,
    required this.latitude,
    required this.longitude,
  });
}
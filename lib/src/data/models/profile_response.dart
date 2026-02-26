import 'package:scube_task/src/domain/entites/user_profile_entity.dart';

class ProfileResponse {
  final int id;
  final String email;
  final String username;
  final String password;
  final Name name;
  final Address address;
  final String phone;
  final int v;

  const ProfileResponse({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.address,
    required this.phone,
    required this.v,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    return ProfileResponse(
      id: json['id'],
      email: json['email'],
      username: json['username'],
      password: json['password'],
      name: Name.fromJson(json['name']),
      address: Address.fromJson(json['address']),
      phone: json['phone'],
      v: json['__v'],
    );
  }
}

class Name {
  final String firstname;
  final String lastname;

  const Name({required this.firstname, required this.lastname});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(firstname: json['firstname'], lastname: json['lastname']);
  }

  String get fullName => '$firstname $lastname';
}

class Address {
  final Geolocation geolocation;
  final String city;
  final String street;
  final int number;
  final String zipcode;

  const Address({
    required this.geolocation,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      geolocation: Geolocation.fromJson(json['geolocation']),
      city: json['city'],
      street: json['street'],
      number: json['number'],
      zipcode: json['zipcode'],
    );
  }
}

class Geolocation {
  final double lat;
  final double long;

  const Geolocation({required this.lat, required this.long});

  factory Geolocation.fromJson(Map<String, dynamic> json) {
    return Geolocation(
      lat: double.parse(json['lat']),
      long: double.parse(json['long']),
    );
  }
}
extension ProfileResponseMapper on ProfileResponse {
  UserProfileEntity toEntity() {
    return UserProfileEntity(
      id: id,
      email: email,
      username: username,
      fullName: name.fullName,
      phone: phone,
      city: address.city,
      street: address.street,
      streetNumber: address.number,
      zipCode: address.zipcode,
      latitude: address.geolocation.lat,
      longitude: address.geolocation.long,
    );
  }
}
import 'dart:convert';

class UserModel {
  final String email;
  final double lat;
  final double lng;
  final String name;
  final String password;
  final String typeuser;
  UserModel({
    required this.email,
    required this.lat,
    required this.lng,
    required this.name,
    required this.password,
    required this.typeuser,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'lat': lat,
      'lng': lng,
      'name': name,
      'password': password,
      'typeuser': typeuser,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'],
      lat: map['lat'],
      lng: map['lng'],
      name: map['name'],
      password: map['password'],
      typeuser: map['typeuser'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}

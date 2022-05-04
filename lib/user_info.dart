import 'package:shared_preferences/shared_preferences.dart';

class UserInfo {
  final String token;
  final String name;
  final String phone;
  final String email;
  final String password;

  UserInfo(
      {required this.token,
      required this.name,
      required this.phone,
      required this.email,
      required this.password});

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
        token: json['token'],
        name: json['name'],
        phone: json['phone'],
        email: json['email'],
        password: json['password']);
  }
}

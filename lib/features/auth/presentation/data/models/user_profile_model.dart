import '../../domain/entities/user_profile_entity.dart';

class UserProfileModel extends UserProfileEntity {
  UserProfileModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.username,
    required super.image,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      username: json['username'],
      image: json['image'],
    );
  }
}

// domain/entities/user_profile_entity.dart
class UserProfileEntity {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String username;
  final String image;

  UserProfileEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.username,
    required this.image,
  });
}

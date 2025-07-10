class UserEntity {
  final int id;
  final String username;
  final String token;
  final String? refreshToken;

  UserEntity({
    required this.id,
    required this.username,
    required this.token,
    this.refreshToken,
  });
}

import '../entities/user_entity.dart';
import '../entities/user_profile_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> login(String username, String password);

  Future<UserProfileEntity> getMe(String accessToken);

  Future<String> refreshToken(String refreshToken);
}

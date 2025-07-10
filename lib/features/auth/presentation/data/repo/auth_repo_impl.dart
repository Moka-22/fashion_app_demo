import 'package:fashion_app/features/auth/presentation/data/data_source/auth_remote_data_source.dart';
import 'package:fashion_app/features/auth/presentation/domain/entities/user_entity.dart';
import 'package:fashion_app/features/auth/presentation/domain/entities/user_profile_entity.dart';
import 'package:fashion_app/features/auth/presentation/domain/repo/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<UserEntity> login(String username, String password) {
    return remoteDataSource.login(username, password);
  }

  @override
  Future<UserProfileEntity> getMe(String accessToken) {
    return remoteDataSource.getMe(accessToken);
  }

  @override
  Future<String> refreshToken(String refreshToken) {
    return remoteDataSource.refreshToken(refreshToken);
  }
}

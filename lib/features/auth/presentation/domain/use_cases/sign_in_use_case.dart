import 'package:fashion_app/features/auth/presentation/domain/repo/auth_repo.dart';

import '../entities/user_entity.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<UserEntity> call(String username, String password) {
    return repository.login(username, password);
  }
}

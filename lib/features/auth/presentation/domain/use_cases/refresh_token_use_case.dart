import 'package:fashion_app/features/auth/presentation/domain/repo/auth_repo.dart';

class RefreshTokenUseCase {
  final AuthRepository repository;
  RefreshTokenUseCase(this.repository);

  Future<String> call(String refreshToken) {
    return repository.refreshToken(refreshToken);
  }
}

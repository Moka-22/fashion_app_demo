import 'package:fashion_app/features/auth/presentation/domain/entities/user_profile_entity.dart';
import 'package:fashion_app/features/auth/presentation/domain/repo/auth_repo.dart';

class GetMeUseCase {
  final AuthRepository repository;
  GetMeUseCase(this.repository);

  Future<UserProfileEntity> call(String accessToken) {
    return repository.getMe(accessToken);
  }
}

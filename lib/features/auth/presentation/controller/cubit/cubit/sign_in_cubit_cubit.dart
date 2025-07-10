import 'package:fashion_app/core/services/shared_preferences_singleton.dart';
import 'package:fashion_app/features/auth/presentation/controller/cubit/cubit/sign_in_cubit_state.dart';
import 'package:fashion_app/features/auth/presentation/domain/use_cases/get_user_use_case.dart';
import 'package:fashion_app/features/auth/presentation/domain/use_cases/refresh_token_use_case.dart';
import 'package:fashion_app/features/auth/presentation/domain/use_cases/sign_in_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUseCase loginUseCase;
  final GetMeUseCase getMeUseCase;
  final RefreshTokenUseCase refreshTokenUseCase;

  AuthCubit(
    this.loginUseCase,
    this.getMeUseCase,
    this.refreshTokenUseCase,
  ) : super(AuthInitial());

  Future<void> login(String username, String password) async {
    emit(AuthLoading());
    try {
      final user = await loginUseCase(username, password);
      emit(AuthSuccess(user.token, user.username));
      await Prefs.setString('token', user.token);

    } catch (e) {
      emit(AuthFailure('Login Failed'));
    }
  }

  Future<void> getProfile(String accessToken) async {
    emit(AuthLoading());
    try {
      final profile = await getMeUseCase(accessToken);
      emit(AuthProfileLoaded(profile.firstName, profile.lastName));
    } catch (e) {
      emit(AuthFailure('Failed to load profile'));
    }
  }

  Future<void> refresh(String refreshToken) async {
    emit(AuthLoading());
    try {
      final newToken = await refreshTokenUseCase(refreshToken);
      emit(AuthSuccess(newToken, 'Refreshed'));
    } catch (e) {
      emit(AuthFailure('Token refresh failed'));
    }
  }
}

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String token;
  final String userName;
  AuthSuccess(this.token, this.userName);
}

class AuthProfileLoaded extends AuthState {
  final String firstName;
  final String lastName;
  AuthProfileLoaded(this.firstName, this.lastName);
}

class AuthFailure extends AuthState {
  final String message;
  AuthFailure(this.message);
}

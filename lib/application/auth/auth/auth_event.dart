part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested(firebase_auth.User? user) =
      AuthCheckRequested;
  const factory AuthEvent.userUpdated(firebase_auth.User user) =
      UserUpdated;
  const factory AuthEvent.signedOut() = SignedOut;
}

part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required bool showPassword,
    required Option<Failure> failure,
    required Option<User> user,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        emailAddress: EmailAddress(none()),
        password: Password(none()),
        isSubmitting: false,
        showErrorMessages: false,
        showPassword: false,
        failure: none(),
        user: none(),
      );
}

extension LoginStateX on LoginState {
  bool get isEmailValid => emailAddress.isValid();

  bool get isPasswordValid => password.isValid();

  bool get isFormValid => isEmailValid && isPasswordValid;
}

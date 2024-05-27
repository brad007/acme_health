import 'package:acme_health/core/extensions/functional_extentions.dart';
import 'package:acme_health/domain/auth/i_auth_repository.dart';
import 'package:acme_health/domain/auth/models/user.dart';
import 'package:acme_health/domain/core/value_objects/email_address.dart';
import 'package:acme_health/domain/core/value_objects/password.dart';
import 'package:acme_health/domain/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authRepository) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        emailChanged: (value) {
          final emailAddress = EmailAddress(value.email.toOption());
          emit(
            state.copyWith(
              emailAddress: emailAddress,
              failure: none(),
            ),
          );
        },
        passwordChanged: (value) {
          final password = Password(value.password.toOption());
          emit(
            state.copyWith(
              password: password,
              failure: none(),
            ),
          );
        },
        signInPressed: (value) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              failure: none(),
            ),
          );

          final emailAddress =
              EmailAddress(state.emailAddress.getOrCrash().toOption());
          final password = Password(state.password.getOrCrash().toOption());

          final networkResponse = _authRepository.signIn(
            email: emailAddress,
            password: password,
          );

          final user = await networkResponse.run();

          user.fold(
            (failure) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: true,
                  failure: some(failure),
                ),
              );
            },
            (user) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: false,
                  failure: none(),
                  user: some(user),
                ),
              );
            },
          );
        },
        toggleShowPassword: (value) {
          emit(
            state.copyWith(
              showPassword: !state.showPassword,
            ),
          );
        },
        showErrorMessages: (value) {
          emit(
            state.copyWith(
              showErrorMessages: true,
            ),
          );
        },
      );
    });
  }

  final IAuthRepository _authRepository;
}

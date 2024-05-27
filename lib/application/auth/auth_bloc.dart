import 'package:acme_health/domain/auth/i_auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (authCheckRequested) async {
          (await _authRepository.getSignedInUser().run()).fold(
            () => emit(const AuthState.unauthenticated()),
            (_) => emit(const AuthState.authenticated()),
          );
        },
        signedOut: (signedOut) async {
          final task = _authRepository.signOut();
          await task.run();
        },
      );
    });
  }

  final IAuthRepository _authRepository;
}

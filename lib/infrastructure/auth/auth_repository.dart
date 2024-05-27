import 'dart:convert';

import 'package:acme_health/domain/api_failure.dart';
import 'package:acme_health/domain/auth/i_auth_repository.dart';
import 'package:acme_health/domain/auth/models/user.dart';
import 'package:acme_health/domain/core/network_response.dart';
import 'package:acme_health/domain/core/value_objects/email_address.dart';
import 'package:acme_health/domain/core/value_objects/password.dart';
import 'package:acme_health/infrastructure/fake_http_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@prod
@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(this._httpService);

  final FakeHttpService _httpService;

  @override
  TaskOption<User> getSignedInUser() {
    return TaskOption<User>(() async {
      final prefs = await SharedPreferences.getInstance();
      final user = prefs.getString('user');
      if (user != null) {
        return optionOf(
          User.fromJson(jsonDecode(user) as Map<String, dynamic>),
        );
      }
      return none();
    });
  }

  @override
  NetworkResponse<User> signIn({
    required EmailAddress email,
    required Password password,
  }) =>
      NetworkResponse.tryCatch(
        () async {
          final response = await _httpService.post(
            'https://api.example.com/signin',
            body: {
              'email': email.getOrCrash(),
              'password': password.getOrCrash(),
            },
          );

          final jsonEncoded = jsonEncode(response);

          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('user', jsonEncoded);

          return User.fromJson(response);
        },
        (error, stackTrace) {
          return const ApiFailure.invalidCredentials();
        },
      );

  @override
  Task<void> signOut() {
    return Task(() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
    });
  }
}

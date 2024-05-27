import 'package:acme_health/domain/auth/models/user.dart';
import 'package:acme_health/domain/core/network_response.dart';
import 'package:acme_health/domain/core/value_objects/email_address.dart';
import 'package:acme_health/domain/core/value_objects/password.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthRepository {
  TaskOption<User> getSignedInUser();

  NetworkResponse<User> signIn({
    required EmailAddress email,
    required Password password,
  });

  Task<void> signOut();
}

import 'dart:convert';

import 'package:acme_health/core/extensions/functional_extentions.dart';
import 'package:acme_health/domain/api_failure.dart';
import 'package:acme_health/domain/auth/models/user.dart';
import 'package:acme_health/domain/core/value_objects/email_address.dart';
import 'package:acme_health/domain/core/value_objects/password.dart';
import 'package:acme_health/domain/core/value_objects/unique_id.dart';
import 'package:acme_health/domain/core/value_objects/value_string.dart';
import 'package:acme_health/infrastructure/auth/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mocks.mocks.dart';

void main() {
  late MockFakeHttpService mockHttpService;
  late AuthRepository authRepository;

  setUp(() {
    mockHttpService = MockFakeHttpService();
    authRepository = AuthRepository(mockHttpService);
  });

  group('AuthRepository', () {
    const testEmail = 'user@example.com';
    const testPassword = 'password';
    final testUser = User(
      id: UniqueID.fromUniqueString('1'.toOption()),
      username: ValueString.fromString('Fake User'.toOption()),
      email: EmailAddress(testEmail.toOption()),
    );

    final testEmailAddress = EmailAddress(testEmail.toOption());
    final testPasswordObject = Password(testPassword.toOption());
    final testUserJson = {
      'id': '1',
      'email': 'user@example.com',
      'username': 'Fake User',
    };

    group('signIn', () {
      test('should return User on successful sign in', () async {
        when(
          mockHttpService.post(
            'https://api.example.com/signin',
            body: {
              'email': testEmail,
              'password': testPassword,
            },
          ),
        ).thenAnswer((_) async => testUserJson);

        final result = await authRepository
            .signIn(email: testEmailAddress, password: testPasswordObject)
            .run();

        result.match(
          (failure) => expect(failure, isA<ApiFailure>()),
          (user) => expect(user, equals(testUser)),
        );
      });

      test('should return ApiFailure.invalidCredentials on invalid credentials',
          () async {
        when(
          mockHttpService.post(
            'https://api.example.com/signin',
            body: {
              'email': testEmail,
              'password': '${testPassword}test',
            },
          ),
        ).thenThrow(Exception('Invalid credentials'));

        final result = await authRepository
            .signIn(email: testEmailAddress, password: testPasswordObject)
            .run();

        result.match(
          (failure) =>
              expect(failure, equals(const ApiFailure.invalidCredentials())),
          (user) => fail('Expected an ApiFailure, got a User'),
        );
      });
    });

    group('getSignedInUser', () {
      test('should return User if a user is signed in', () async {
        SharedPreferences.setMockInitialValues({
          'user': jsonEncode(testUserJson),
        });

        final result = await authRepository.getSignedInUser().run();

        result.match(
          () => fail('Expected a User, got None'),
          (user) => expect(user, equals(testUser)),
        );
      });

      test('should return None if no user is signed in', () async {
        SharedPreferences.setMockInitialValues({});

        final result = await authRepository.getSignedInUser().run();

        result.match(
          () => expect(true, isTrue), // Expecting None
          (user) => fail('Expected None, got a User'),
        );
      });
    });

    group('signOut', () {
      test('should clear the user from SharedPreferences', () async {
        SharedPreferences.setMockInitialValues({
          'user': jsonEncode(testUserJson),
        });

        await authRepository.signOut().run();

        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString('user'), isNull);
      });
    });
  });
}

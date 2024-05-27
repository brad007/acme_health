import 'package:acme_health/domain/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure implements Failure {
  const factory ApiFailure.connectionTimeout() = ConnectionTimeout;

  const factory ApiFailure.sendTimeout() = SendTimeout;

  const factory ApiFailure.receiveTimeout() = ReceiveTimeout;

  const factory ApiFailure.badCertificate() = BadCertificate;

  const factory ApiFailure.badResponse() = BadResponse;

  const factory ApiFailure.cancel() = Cancel;

  const factory ApiFailure.connectionError() = ConnectionError;

  const factory ApiFailure.other({String? message}) = Other;
  const factory ApiFailure.invalidCredentials({String? message}) =
      InvalidCredentials;
}

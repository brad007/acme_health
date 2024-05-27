import 'package:acme_health/domain/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_failure.freezed.dart';

@freezed
class DatabaseFailure with _$DatabaseFailure implements Failure {
  const factory DatabaseFailure.unableToFetch() = UnableToFetch;

  const factory DatabaseFailure.unableToUpdate() = UnableToUpdate;

  const factory DatabaseFailure.unableToDelete() = UnableToDelete;

  const factory DatabaseFailure.unableToCreate() = UnableToCreate;
}

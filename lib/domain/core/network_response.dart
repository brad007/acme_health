import 'package:acme_health/domain/failure.dart';
import 'package:fpdart/fpdart.dart';

typedef NetworkResponse<T> = TaskEither<Failure, T>;

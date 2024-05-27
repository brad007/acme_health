import 'package:fpdart/fpdart.dart';

extension FunctionalExtentions<T> on T? {
  Option<T> toOption() => optionOf(this);
}

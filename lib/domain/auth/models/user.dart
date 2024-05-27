import 'package:acme_health/domain/core/serializers/email_serializer.dart';
import 'package:acme_health/domain/core/serializers/id_serializer.dart';
import 'package:acme_health/domain/core/serializers/value_string_serliazer.dart';
import 'package:acme_health/domain/core/value_objects/email_address.dart';
import 'package:acme_health/domain/core/value_objects/unique_id.dart';
import 'package:acme_health/domain/core/value_objects/value_string.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @IDSerializer() required UniqueID id,
    @ValueStringSerializer() required ValueString username,
    @EmailSerializer() required EmailAddress email,
  }) = _User;

  factory User.empty() => User(
        id: UniqueID(),
        username: ValueString.fromString(none()),
        email: EmailAddress(none()),
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

import 'package:acme_health/domain/core/value_objects/email_address.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class EmailSerializer extends JsonConverter<EmailAddress, String> {
  const EmailSerializer();

  @override
  EmailAddress fromJson(String json) {
    return EmailAddress(optionOf(json));
  }

  @override
  String toJson(EmailAddress object) {
    return object.safeValue;
  }
}

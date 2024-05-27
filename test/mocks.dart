import 'package:acme_health/infrastructure/fake_http_service.dart';
import 'package:acme_health/infrastructure/objectbox_store.dart';
import 'package:acme_health/infrastructure/questionnaire/mappers/questionnaire_mapper.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<FakeHttpService>(as: #MockFakeHttpService),
  MockSpec<ObjectBoxStore>(as: #MockObjectBoxStore),
  MockSpec<QuestionnaireMapper>(as: #MockQuestionnaireMapper),
])
void main() {}

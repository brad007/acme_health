import 'package:acme_health/infrastructure/questionnaire/dtos/questionnaire_dto.dart';
import 'package:acme_health/objectbox.g.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class ObjectBoxStore {
  ObjectBoxStore._create(this._store) {
    _questionnaireBox = Box<QuestionnaireDTO>(_store);
  }

  late final Store _store;
  late final Box<QuestionnaireDTO> _questionnaireBox;

  static Future<ObjectBoxStore> getInstance() async {
    final store = await openStore(
        directory:
            p.join((await getApplicationDocumentsDirectory()).path, "obx-demo"),
        macosApplicationGroup: "objectbox.demo");
    return ObjectBoxStore._create(store);
  }

  Future<void> addQuestionnaire(QuestionnaireDTO questionnaire) async {
    await _questionnaireBox.putAsync(questionnaire);
  }

  Future<void> removeQuestionnaire(int id) async {
    await _questionnaireBox.removeAsync(id);
  }

  Future<QuestionnaireDTO?> getQuestionnaire(int id) {
    return _questionnaireBox.getAsync(id);
  }

  Stream<List<QuestionnaireDTO>> getQuestionnaires() {
    return _questionnaireBox
        .query()
        .watch(triggerImmediately: true)
        .map((query) {
      return query.find();
    });
  }
}

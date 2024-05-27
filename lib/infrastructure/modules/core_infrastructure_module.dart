import 'package:acme_health/infrastructure/fake_http_service.dart';
import 'package:acme_health/infrastructure/objectbox_store.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreInfrastructureModule {
  @lazySingleton
  FakeHttpService get httpService => FakeHttpService();

  @preResolve
  Future<ObjectBoxStore> get objectBox => ObjectBoxStore.getInstance();
}

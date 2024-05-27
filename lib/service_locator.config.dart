// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:acme_health/application/auth/auth_bloc.dart' as _i10;
import 'package:acme_health/application/login/login_bloc.dart' as _i11;
import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart'
    as _i12;
import 'package:acme_health/application/questionnaire/watcher/questionnaire_watcher_bloc.dart'
    as _i13;
import 'package:acme_health/domain/auth/i_auth_repository.dart' as _i6;
import 'package:acme_health/domain/questionaire/i_questionnaire_repository.dart'
    as _i8;
import 'package:acme_health/infrastructure/auth/auth_repository.dart' as _i7;
import 'package:acme_health/infrastructure/fake_http_service.dart' as _i5;
import 'package:acme_health/infrastructure/modules/core_infrastructure_module.dart'
    as _i14;
import 'package:acme_health/infrastructure/modules/mapper_module.dart' as _i15;
import 'package:acme_health/infrastructure/objectbox_store.dart' as _i3;
import 'package:acme_health/infrastructure/questionnaire/mappers/questionnaire_mapper.dart'
    as _i4;
import 'package:acme_health/infrastructure/questionnaire/questionnaire_repository.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreInfrastructureModule = _$CoreInfrastructureModule();
    final mapperModule = _$MapperModule();
    await gh.factoryAsync<_i3.ObjectBoxStore>(
      () => coreInfrastructureModule.objectBox,
      preResolve: true,
    );
    gh.lazySingleton<_i4.QuestionnaireMapper>(() => mapperModule.mapper);
    gh.lazySingleton<_i5.FakeHttpService>(
        () => coreInfrastructureModule.httpService);
    gh.lazySingleton<_i6.IAuthRepository>(
      () => _i7.AuthRepository(gh<_i5.FakeHttpService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i8.IQuestionnaireRepository>(
      () => _i9.QuestionnaireRepository(
        gh<_i3.ObjectBoxStore>(),
        gh<_i4.QuestionnaireMapper>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(gh<_i6.IAuthRepository>()));
    gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc(gh<_i6.IAuthRepository>()));
    gh.factory<_i12.QuestionnaireFormBloc>(
        () => _i12.QuestionnaireFormBloc(gh<_i8.IQuestionnaireRepository>()));
    gh.factory<_i13.QuestionnaireWatcherBloc>(() =>
        _i13.QuestionnaireWatcherBloc(gh<_i8.IQuestionnaireRepository>()));
    return this;
  }
}

class _$CoreInfrastructureModule extends _i14.CoreInfrastructureModule {}

class _$MapperModule extends _i15.MapperModule {}

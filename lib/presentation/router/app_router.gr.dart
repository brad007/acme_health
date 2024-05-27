// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:acme_health/domain/questionaire/models/questionnaire.dart'
    as _i6;
import 'package:acme_health/presentation/home/home_page.dart' as _i1;
import 'package:acme_health/presentation/login/login_page.dart' as _i2;
import 'package:acme_health/presentation/questionnaire/questionnaire_page.dart'
    as _i3;
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i7;
import 'package:fpdart/fpdart.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    QuestionnaireRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionnaireRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.QuestionnairePage(
          questionnaire: args.questionnaire,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.QuestionnairePage]
class QuestionnaireRoute extends _i4.PageRouteInfo<QuestionnaireRouteArgs> {
  QuestionnaireRoute({
    required _i5.Option<_i6.Questionnaire> questionnaire,
    _i7.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          QuestionnaireRoute.name,
          args: QuestionnaireRouteArgs(
            questionnaire: questionnaire,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionnaireRoute';

  static const _i4.PageInfo<QuestionnaireRouteArgs> page =
      _i4.PageInfo<QuestionnaireRouteArgs>(name);
}

class QuestionnaireRouteArgs {
  const QuestionnaireRouteArgs({
    required this.questionnaire,
    this.key,
  });

  final _i5.Option<_i6.Questionnaire> questionnaire;

  final _i7.Key? key;

  @override
  String toString() {
    return 'QuestionnaireRouteArgs{questionnaire: $questionnaire, key: $key}';
  }
}

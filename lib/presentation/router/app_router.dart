import 'package:acme_health/presentation/router/app_router.gr.dart';
import 'package:acme_health/presentation/router/auth_guard.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/route/auto_route_config.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
          guards: [
            AuthGuard(),
          ],
        ),
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(page: QuestionnaireRoute.page),
      ];
}

import 'package:acme_health/domain/auth/i_auth_repository.dart';
import 'package:acme_health/presentation/router/app_router.gr.dart';
import 'package:acme_health/service_locator.dart';
import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    (await getIt<IAuthRepository>().getSignedInUser().run()).fold(
      () => resolver.next(),
      (t) => router.replace(const HomeRoute()),
    );
  }
}

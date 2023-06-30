import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: HomeRoute.page),
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/register', page: RegisterRoute.page),
        AutoRoute(path: '/reset', page: ResetPasswordRoute.page),
        AutoRoute(path: '/counter', page: CounterRoute.page),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}

import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import '../injection/injection.dart';
import 'guards.dart';
import 'router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          guards: [getIt<AuthGuard>()],
          page: HomeRoute.page,
        ),
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(
          path: '/register',
          page: RegisterRoute.page,
          keepHistory: false,
        ),
        AutoRoute(
          path: '/reset',
          page: ResetPasswordRoute.page,
          keepHistory: false,
        ),
        AutoRoute(
          path: '/verification',
          page: VerificationRoute.page,
          keepHistory: false,
        ),
        AutoRoute(
          path: '/fill',
          page: FillDataRoute.page,
          keepHistory: false,
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}

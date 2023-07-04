import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user/i_user_repository.dart';
import 'router.gr.dart';

@Injectable()
class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._authFacade, this._userRepository);

  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    _authFacade.getSignedInUser().fold(() => router.push(const LoginRoute()),
        (u) async {
      if (u.emailVerified) {
        final user = await _userRepository.get(u);
        await user.fold((l) => router.push(const LoginRoute()), (u) {
          if (u.filled ?? false) {
            resolver.next();
          } else {
            router.push(const FillDataRoute());
          }
        });
      } else {
        await router.push(VerificationRoute(email: u.email!));
      }
    });
  }
}

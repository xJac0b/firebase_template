import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../auth/domain/i_auth_facade.dart';
import '../auth/domain/user/i_user_repository.dart';
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
      final user = await _userRepository.get(u);
      await user.fold((l) => router.push(const LoginRoute()), (u) {
        if (u.emailVerified) {
          resolver.next();
        } else {
          router.push(VerificationRoute(email: u.email.getOrCrash()));
        }
      });
    });
  }
}

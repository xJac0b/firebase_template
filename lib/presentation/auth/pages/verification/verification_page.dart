import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../core/injection/injection.dart';
import '../../widgets/logout_detector.dart';
import 'verification_page_view.dart';

@RoutePage()
class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>()
        ..add(const SignInFormEvent.checkVerificationStatus()),
      child: const LogoutDetector(child: VerificationPageView()),
    );
  }
}

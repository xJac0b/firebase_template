// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../app/app.dart';
// import '../../../../l10n/l10n.dart';
// import '../../../application/sign_in_form/sign_in_form_bloc.dart';
// import '../../widgets/wide_button.dart';


// class VerificationPageView extends StatelessWidget {
//   const VerificationPageView({Key? key, required this.email}) : super(key: key);
//   final String email;
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<SignInFormBloc, SignInFormState>(
//       listener: (context, state) {
//         if (state.isEmailVerified != null) {
//           if (state.isEmailVerified!) {
//             // context.router.replace(const FillDataRoute());
//           } else {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(
//                   context.l10n.emailNotVerified,
//                 ),
//               ),
//             );
//           }
//         }
//       },
//       builder: (context, state) {
//         return SafeArea(
//           child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             body: state.isSubmitting
//                 ? const Center(child: CircularProgressIndicator())
//                 : DefaultPadding(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text( context.l10n.verifyEmailHeading, style: Theme.of(context).textTheme.headlineLarge),
//                         const SizedBox(height: 10),
//                         Text(
//                             style:
//                                 TextStyle(color: Theme.of(context).colorScheme.onBackground),
//                             textAlign: TextAlign.center,
//                             'verifyEmailInfo'.tr(namedArgs: {'email': email})),
//                         // Expanded(child: Assets.images.mail.svg()),
//                         if (state.verificationEmailAttempts > 0)
//                           TextButton(
//                             onPressed: () => context.read<SignInFormBloc>().add(
//                                   const SignInFormEvent.sendVerificationEmail(),
//                                 ),
//                             child: Text('verifyEmailResend'),
//                           ),
//                         WideButton(
//                             label: 'next',
//                             onPressed: () {
//                               context.read<SignInFormBloc>().add(
//                                     const SignInFormEvent
//                                         .checkVerificationStatus(),
//                                   );
//                             })
//                       ],
//                     ),
//                   ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties.add(StringProperty('email', email));
//   }
// }

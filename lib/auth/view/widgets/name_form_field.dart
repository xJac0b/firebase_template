// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fpdart/fpdart.dart';


// class NameFormField extends StatelessWidget {
//   const NameFormField({
//     super.key,
//     this.firstName = true,
//   });
//   final bool firstName;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator: (_) =>
//           context.read<UserBloc>().state.user?.displayName.value.fold(
//                 (f) => f.maybeMap(
//                   empty: (_) => 'emptyName'.tr(),
//                   exceedingLength: (_) => 'exceedingNameLength'
//                       .tr(namedArgs: {'length': '${DisplayName.maxLength}'}),
//                   orElse: () => 'invalidName'.tr(),
//                 ),
//                 (_) => null,
//               ),
//       initialValue: context
//           .read<UserBloc>()
//           .state
//           .user
//           ?.displayName
//           .value
//           .fold((l) => null, id),
//       onChanged: (v) =>
//           context.read<UserBloc>().add(UserEvent.nameChanged(name: v)),
//       hintText: 'firstName'.tr(),
//       keyboardType: TextInputType.name,
//       prefixIcon: const Icon(Icons.person),
//     );
//   }

//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties.add(DiagnosticsProperty<bool>('firstName', firstName));
//   }
// }

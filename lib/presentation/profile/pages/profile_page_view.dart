import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../application/auth/auth/auth_bloc.dart';
import '../../../l10n/l10n.dart';
import '../../shared/widgets/default_padding.dart';
import '../../shared/widgets/loading_indicator.dart';
import '../../shared/widgets/wide_button.dart';
import '../widgets/avatar.dart';
import '../widgets/background_image.dart';
import '../widgets/profile_info_row.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) => state.maybeMap(
          authenticated: (state) => Container(
            width: MediaQuery.of(context).size.width,
            child: CustomScrollView(
              slivers: [
                BackgroundImage(
                  imageUrl: state.user.photoUrl,
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    Avatar(
                      url: state.user.photoUrl,
                    ),
                    ProfileInfoRow(
                      icon: Icons.person,
                      text: state.user.displayName!.getOrCrash(),
                    ),
                    ProfileInfoRow(
                      icon: Icons.email,
                      text: state.user.email.getOrCrash(),
                    ),
                    if (state.user.male!)
                      ProfileInfoRow(
                        icon: Icons.male,
                        text: context.l10n.genderMale,
                      )
                    else
                      ProfileInfoRow(
                        icon: Icons.female,
                        text: context.l10n.genderFemale,
                      ),
                    ProfileInfoRow(
                      icon: Icons.calendar_month,
                      text: DateFormat('d MMMM yyyy')
                          .format(state.user.dateOfBirth!.getOrCrash())
                          .toString(),
                    ),
                    DefaultPadding(
                      child: WideButton(
                        onPressed: () {},
                        label: context.l10n.editProfile,
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
          orElse: () => const LoadingIndicator(),
        ),
      ),
    );
  }
}

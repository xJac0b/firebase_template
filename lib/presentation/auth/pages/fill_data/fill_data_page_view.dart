import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/fill_data/fill_data_bloc.dart';
import '../../../../core/routes/router.gr.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../l10n/l10n.dart';
import '../../../shared/widgets/default_padding.dart';
import '../../../shared/widgets/loading_indicator.dart';
import '../../widgets/logout_button.dart';
import 'widgets/fill_data_form.dart';

class FillDataPageView extends StatelessWidget {
  const FillDataPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: const [LogoutButton()],
        ),
        resizeToAvoidBottomInset: true,
        body: Center(
          child: SingleChildScrollView(
            child: DefaultPadding(
              child: BlocConsumer<FillDataBloc, FillDataState>(
                listener: (context, state) {
                  state.databaseFailureOrSuccessOption.fold(
                    () => null,
                    (t) => t.fold(
                      (l) => ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            l.maybeMap(
                              orElse: () => context.l10n.serverError,
                            ),
                          ),
                        ),
                      ),
                      (_) => context.router.replace(const HomeRoute()),
                    ),
                  );
                },
                builder: (context, state) {
                  if (state.isSubmitting ||
                      state.databaseFailureOrSuccessOption.fold(
                        () => false,
                        (t) => t.fold((l) => false, (r) => true),
                      )) {
                    return const LoadingIndicator();
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultPadding(
                        child: Text(
                          context.l10n.fillDataHeading,
                          style: context.textTheme.headlineLarge,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const FillDataForm(),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

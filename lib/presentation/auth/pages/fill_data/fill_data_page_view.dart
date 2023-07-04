import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/fill_data/fill_data_bloc.dart';
import '../../../../core/routes/router.gr.dart';
import '../../../../l10n/l10n.dart';
import '../../../shared/widgets/default_padding.dart';
import 'widgets/fill_data_form.dart';

class FillDataPageView extends StatelessWidget {
  const FillDataPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: SingleChildScrollView(
            child: DefaultPadding(
              child: BlocConsumer<FillDataBloc, FillDataState>(
                listener: (context, state) {
                  if (state.success) {
                    context.router.replace(const HomeRoute());
                  }
                },
                builder: (context, state) {
                  if (state.isSubmitting) {
                    return const CircularProgressIndicator();
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultPadding(
                        child: Text(
                          context.l10n.fillDataHeading,
                          style: Theme.of(context).textTheme.headlineLarge,
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

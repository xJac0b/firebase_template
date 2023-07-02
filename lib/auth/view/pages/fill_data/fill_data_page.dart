import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../../application/fill_data/fill_data_bloc.dart';
import 'fill_data_page_view.dart';

@RoutePage()
class FillDataPage extends StatelessWidget {
  const FillDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FillDataBloc>(),
      child: const FillDataPageView(),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/fill_data/fill_data_bloc.dart';
import '../../../../../l10n/l10n.dart';
import '../../../../shared/widgets/wide_button.dart';
import 'avatar_upload.dart';
import 'date_field.dart';
import 'gender_dropdown.dart';
import 'name_form_field.dart';

class FillDataForm extends StatelessWidget {
  const FillDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FillDataBloc, FillDataState>(
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              AvatarUpload(
                image: state.picture != null
                    ? Image.file(File(state.picture!.path!))
                    : null,
                onPressed: () => context.read<FillDataBloc>().add(
                      const FillDataEvent.selectPicture(),
                    ),
              ),
              NameFormField(
                name: state.displayName,
                showValidatorMessages: state.showValidatorMessages,
              ),
              const SizedBox(height: 20),
              GenderDropdown(maleInitial: state.male),
              const SizedBox(height: 20),
              DateField(
                validator: (_) => state.dateOfBirth.value.fold(
                  (f) => f.maybeMap(
                    invalidDate: (_) => context.l10n.invalidDate,
                    orElse: () => context.l10n.invalidDate,
                  ),
                  (_) => null,
                ),
                hintText: context.l10n.dateOfBirth,
                dateChanged: (date) => context
                    .read<FillDataBloc>()
                    .add(FillDataEvent.dateOfBirthChanged(date: date)),
              ),
              const SizedBox(height: 20),
              WideButton(
                onPressed: () => context
                    .read<FillDataBloc>()
                    .add(const FillDataEvent.saved()),
                label: context.l10n.save,
              ),
            ],
          ),
        );
      },
    );
  }
}

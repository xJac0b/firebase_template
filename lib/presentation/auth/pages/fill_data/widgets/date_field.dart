import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../constants/decorations.dart';

class DateField extends StatefulWidget {
  const DateField({
    Key? key,
    required this.hintText,
    this.dateChanged,
    this.initialValue,
    this.validator,
  }) : super(key: key);
  final String hintText;
  final Function(DateTime date)? dateChanged;
  final DateTime? initialValue;
  final String? Function(String?)? validator;
  @override
  State<DateField> createState() => _DateFieldState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('hintText', hintText))
      ..add(ObjectFlagProperty<Function(DateTime date)?>.has(
          'dateChanged', dateChanged,),)
      ..add(DiagnosticsProperty<DateTime?>('initialValue', initialValue))
      ..add(ObjectFlagProperty<String? Function(String? p1)?>.has(
          'validator', validator,),);
  }
}

class _DateFieldState extends State<DateField> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      dateInput.text = DateFormat('dd MMMM, yyyy').format(widget.initialValue!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      onTap: () async {
        final now = DateTime.now();
        final pickedDate = await showDatePicker(
          context: context,
          initialDate:
              widget.initialValue ?? DateTime(now.year, now.month, now.day),
          firstDate: DateTime(1900),
          lastDate: DateTime(now.year, now.month, now.day),
        );
        if (pickedDate != null) {
          final formattedDate = DateFormat('dd MMMM, yyyy').format(pickedDate);
          setState(() {
            dateInput.text = formattedDate;
            if (widget.dateChanged != null) {
              widget.dateChanged!(pickedDate);
            }
          });
        }
      },
      readOnly: true,
      controller: dateInput,
      decoration: getInputDecoration(
        prefixIcon: const Icon(Icons.calendar_today),
        hintText: widget.hintText,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<TextEditingController>('dateinput', dateInput),);
  }
}

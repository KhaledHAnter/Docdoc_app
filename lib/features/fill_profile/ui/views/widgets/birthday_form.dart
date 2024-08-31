import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_form_feild.dart';

class BirthdayForm extends StatefulWidget {
  const BirthdayForm({super.key});

  @override
  State<BirthdayForm> createState() => _BirthdayFormState();
}

class _BirthdayFormState extends State<BirthdayForm> {
  final TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppTextFormFeild(
      controller: _dateController,
      hintText: "Birthday",
      readOnly: true,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorsManager.lighterGray,
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      onTap: () => _selectDate(context),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}

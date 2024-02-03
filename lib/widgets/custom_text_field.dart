import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hint;

  const CustomTextField({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular12(
          context: context,
        ),
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.text,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: color ?? const Color(0xFF4DB7F2),
          shadowColor: Colors.grey.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyles.styleSemiBold18(
            context: context,
          ).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}

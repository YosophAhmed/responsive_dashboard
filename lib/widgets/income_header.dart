import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold16(
            context: context,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(
                  (0xFFF1F1F1),
                ),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(
                  context: context,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(
                Icons.keyboard_arrow_down,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

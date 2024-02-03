import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.itemDetailsModel,
  });

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: itemDetailsModel.color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          itemDetailsModel.title,
          style: AppStyles.styleRegular16(
            context: context,
          ),
        ),
        const Spacer(),
        Text(
          itemDetailsModel.value,
          style: AppStyles.styleMedium16(
            context: context,
          ).copyWith(
            color: const Color(0xFF208CC8),
          ),
        ),
      ],
    );
  }
}

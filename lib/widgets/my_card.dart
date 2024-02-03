import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.only(
          right: 12,
        ),
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(AppImages.creditCard),
            fit: BoxFit.fill,
          ),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16(
                  context: context,
                ).copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Yosoph Ahmed',
                style: AppStyles.styleMedium20(
                  context: context,
                ),
              ),
              trailing: const Icon(
                Icons.image_outlined,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Text(
              '0111100201111002',
              style: AppStyles.styleSemiBold24(
                context: context,
              ).copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              '12/20 - 124',
              style: AppStyles.styleRegular16(
                context: context,
              ).copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

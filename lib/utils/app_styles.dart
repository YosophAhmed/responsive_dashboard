import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16({
    required BuildContext context,
  }) =>
      TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFontSize(
          context: context,
          fontSize: 16,
        ),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleBold16({
    required BuildContext context,
  }) =>
      TextStyle(
        color: const Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(
          context: context,
          fontSize: 16,
        ),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
      );

  static TextStyle styleMedium16({
    required BuildContext context,
  }) =>
      TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFontSize(
          context: context,
          fontSize: 16,
        ),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleMedium20({
    required BuildContext context,
  }) =>
      TextStyle(
        color: const Color(0xFFFFFFFF),
        fontSize: getResponsiveFontSize(
          context: context,
          fontSize: 20,
        ),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold16({
    required BuildContext context,
  }) =>
      TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFontSize(
          context: context,
          fontSize: 16,
        ),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular12({
    required BuildContext context,
  }) =>
      TextStyle(
        color: const Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(
          context: context,
          fontSize: 12,
        ),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleSemiBold24({
    required BuildContext context,
  }) =>
      TextStyle(
        color: const Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(
          context: context,
          fontSize: 24,
        ),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleRegular14({
    required BuildContext context,
  }) =>
      TextStyle(
        color: const Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(
          context: context,
          fontSize: 14,
        ),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleSemiBold18({
    required BuildContext context,
  }) =>
      TextStyle(
        color: const Color(0xFFFFFFFF),
        fontSize: getResponsiveFontSize(
          context: context,
          fontSize: 18,
        ),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
}

double getResponsiveFontSize({
  required BuildContext context,
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(
    context: context,
  );
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.1;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor({
  required BuildContext context,
}) {
  // Without Using MediaQuery
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 600;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1600;
  }
}

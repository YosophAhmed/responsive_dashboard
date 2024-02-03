import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/cards_page_view.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';

class CardsSection extends StatefulWidget {
  const CardsSection({super.key});

  @override
  State<CardsSection> createState() => _CardsSectionState();
}

class _CardsSectionState extends State<CardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
        setState(
          () {},
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold16(
            context: context,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}

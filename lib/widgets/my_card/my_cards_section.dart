import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/my_card/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_card/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        color: Color(0xffFFFFFF),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      // margin: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "My Card",
                style: AppStyles.styleSemiBold20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          MyCardsPageView(pageController: pageController),
          const SizedBox(
            height: 20,
          ),
          DotsIndicator(
            currentPage: currentIndex,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card/my_cards_section.dart';

class LastPart extends StatelessWidget {
  const LastPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFFFFF),
      ),
      child: const MyCardsSection(),
    );
  }
}

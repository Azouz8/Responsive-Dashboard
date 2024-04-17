import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/appImages.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: ShapeDecoration(
          image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground)),
          color: const Color(0xff4eb7f2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 30, top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name Card",
                        style: AppStyles.styleRegular16(context).copyWith(
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                      Text(
                        "Ali Azouz",
                        style: AppStyles.styleMedium20(context),
                      ),
                    ],
                  ),
                  SvgPicture.asset(Assets.imagesGallery)
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 32, right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

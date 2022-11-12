import 'package:flutter/material.dart';
import 'package:food_delivery/app/pages/home/view/widgets/big_text.dart';
import 'package:food_delivery/app/pages/home/view/widgets/icon_and_text.dart';
import 'package:food_delivery/app/pages/home/view/widgets/small_text.dart';
import 'package:food_delivery/app/utils/dimenstions.dart';

class AppColoumn extends StatelessWidget {
  final String text;
  const AppColoumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        size: 15,
                        color: Color(0xFF89DAD0),
                      )),
            ),
            const SizedBox(width: 10),
            SmallText(text: "4.5"),
            const SizedBox(width: 10),
            SmallText(text: "1287"),
            const SizedBox(width: 10),
            SmallText(text: "comments"),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconsAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: Color(0xFFFFD28D)),
            IconsAndTextWidget(
                icon: Icons.location_on,
                text: "1.7Km",
                iconColor: Color(0xFF89DAD0)),
            IconsAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "32min",
                iconColor: Color(0xFFFCAB88))
          ],
        )
      ],
    );
  }
}

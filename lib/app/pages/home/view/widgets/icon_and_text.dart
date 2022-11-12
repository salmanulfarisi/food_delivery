import 'package:flutter/cupertino.dart';
import 'package:food_delivery/app/pages/home/view/widgets/small_text.dart';
import 'package:food_delivery/app/utils/dimenstions.dart';

class IconsAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;

  const IconsAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconSize24,
        ),
        const SizedBox(width: 5),
        SmallText(text: text),
      ],
    );
  }
}

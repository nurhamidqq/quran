import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/presentation/misc/constants.dart';

class BottomNavBarItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final String image;

  const BottomNavBarItem(
      {super.key,
      required this.index,
      required this.isSelected,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 25,
          height: 25,
          child: SvgPicture.asset(
            image,
            // ignore: deprecated_member_use
            color: isSelected ? hard : grey,
          ),
        ),
      ],
    );
  }
}

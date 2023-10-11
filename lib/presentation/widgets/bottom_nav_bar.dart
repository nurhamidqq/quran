import 'package:flutter/material.dart';
import 'package:quran/presentation/misc/constants.dart';
import 'package:quran/presentation/widgets/bottom_nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  final List<BottomNavBarItem> items;
  final void Function(int index) onTap;
  final int selectedIndex;

  const BottomNavBar(
      {super.key,
      required this.items,
      required this.onTap,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(color: white, boxShadow: [
          BoxShadow(
              color: grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, -5))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items
              .map((e) => GestureDetector(
                    onTap: () => onTap(e.index),
                    child: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}

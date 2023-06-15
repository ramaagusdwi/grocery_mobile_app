import 'package:flutter/material.dart';
import 'package:grocery_delivery_mobile_app/resources/text_style_resource.dart';
import 'package:grocery_delivery_mobile_app/widgets/gap_height.dart';

class BottomNavItem extends StatelessWidget {
  final String title;
  const BottomNavItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Tab(icon: Icon(Icons.home)),
        GapHeight(4),
        Text(
          'Home',
          style: textStyle10PrimaryColor,
        )
      ],
    );
  }
}

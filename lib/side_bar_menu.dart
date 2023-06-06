import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  final String assetImage;
  final String label;

  const SideBarItem({required this.assetImage, required this.label});

  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        Image.asset(assetImage,height: 20,),
        const SizedBox(width: 16),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}

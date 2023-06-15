import 'package:flutter/material.dart';
import 'package:grocery_delivery_mobile_app/resources/color_resource.dart';
import 'package:grocery_delivery_mobile_app/resources/text_style_resource.dart';
import 'package:grocery_delivery_mobile_app/widgets/gap_height.dart';
import 'package:grocery_delivery_mobile_app/widgets/gap_width.dart';
import 'package:grocery_delivery_mobile_app/widgets/side_bar_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     InkWell(
            //       onTap: () =>  Scaffold.of(context).openDrawer(),
            //       child: const Icon(
            //         Icons.menu,
            //       ),
            //     ),
            //     Column(
            //       children: [
            //         const Text(
            //           'Location',
            //           style: textStyle14SecondaryTextColor,
            //         ),
            //         const GapHeight(4.0),
            //         Row(
            //           children: [
            //             const Icon(Icons.location_on),
            //             GapWidth(2.0),
            //             const Text('New York, USA',
            //                 style: textStyle14BlackColorMedium),
            //             GapWidth(2.0),
            //             const Icon(Icons.keyboard_arrow_down),
            //           ],
            //         )
            //       ],
            //     ),
            //     const Icon(
            //       Icons.notifications,
            //       color: Colors.black,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}



// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;

//     return  Scaffold(
//       body: Stack(
//         children: [
//           //Lets start first creating Background of the App
//           Container(
//             decoration: const BoxDecoration(
//              color: primaryColor
//             ),           
//           ),
          
//           //Now lets make the Navigation menu
//           SideBarLayout(), 
//         ],
//       ),
//     );
//   }
// }


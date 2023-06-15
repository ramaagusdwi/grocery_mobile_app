import 'package:flutter/material.dart';
import 'package:grocery_delivery_mobile_app/resources/color_resource.dart';
import 'package:grocery_delivery_mobile_app/resources/text_style_resource.dart';
import 'package:grocery_delivery_mobile_app/widgets/gap_height.dart';
import 'package:grocery_delivery_mobile_app/widgets/gap_width.dart';
import 'package:grocery_delivery_mobile_app/widgets/side_bar_layout.dart';
import 'package:grocery_delivery_mobile_app/widgets/text_field_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(              
              prefixIcon: const Icon(Icons.search, color: blackColor),
              suffixIcon: Container(
                color: primaryColor,
                child: const Icon(
                  Icons.format_list_bulleted_rounded,
                  color: whiteColor,
                  size: 24,
                ),
              ),
              iconSquareSize: 42,
              filledColor: whiteColor,
              useBorderSide: false,
              textEditingController: searchController,
              labelText: 'Search food, drink, etc',
              labelStyle: textStyle12SilverColor,
              hintText: 'Search food, drink, etc',
              hintStyle: textStyle12SilverColor,
              onChanged: (value) {},
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your keyword';
                }
                return null;
              },
            ),
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

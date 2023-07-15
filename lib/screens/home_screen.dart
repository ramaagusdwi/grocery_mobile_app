import 'package:control_style/control_style.dart';
import 'package:flutter/material.dart';
import 'package:grocery_delivery_mobile_app/widgets/search_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final outlinedShape = DecoratedOutlinedBorder(
      child: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );

    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: GrocerySearchBar(),
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

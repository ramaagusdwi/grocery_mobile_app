import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grocery_delivery_mobile_app/resources/color_resource.dart';
import 'package:grocery_delivery_mobile_app/resources/text_style_resource.dart';
import 'package:grocery_delivery_mobile_app/screens/home_screen.dart';
import 'package:grocery_delivery_mobile_app/widgets/side_bar_layout.dart';
import 'package:grocery_delivery_mobile_app/widgets/gap_height.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.length,
      child: Scaffold(
        drawer: SideBarLayout(),
        body: const TabBarView(
          children: [
            HomeScreen(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
        bottomNavigationBar: TabBar(
          controller: controller,
          unselectedLabelColor: Colors.grey,
          labelColor: primaryColor,
          indicatorColor: primaryColor,
          onTap: (index) {
            switch (index) {
              case 0:
                {
                  // statements;
                  // context.go('/');
                }
                break;

              case 1:
                {
                  //statements;
                }
                break;

              case 2:
                {
                  //statements;
                }
                break;

              case 3:
                {
                  //statements;
                }
                break;
              case 4:
                {
                  //statements;
                }
                break;
              default:
                {
                  //statements;
                  // context.go('/');
                }
                break;
            }
          },
          tabs: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Tab(icon: Icon(Icons.home)),
                GapHeight(4),
                Text(
                  'Home',
                  style: textStyle10PrimaryColor,
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Tab(icon: Icon(Icons.favorite_outline)),
                GapHeight(4),
                Text(
                  'Favourite',
                  style: textStyle10BlackSecondaryTextColor,
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Tab(icon: Icon(Icons.wallet_outlined)),
                GapHeight(4),
                Text(
                  'Wallet',
                  style: textStyle10BlackSecondaryTextColor,
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Tab(icon: const Icon(Icons.shopping_cart_outlined)),
                GapHeight(4),
                Text(
                  'Cart',
                  style: textStyle10BlackSecondaryTextColor,
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Tab(icon: Icon(Icons.person_2_outlined)),
                GapHeight(4),
                Text(
                  'Profile',
                  style: textStyle10BlackSecondaryTextColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grocery_delivery_mobile_app/models/bottom_nav_item_model.dart';
import 'package:grocery_delivery_mobile_app/resources/color_resource.dart';
import 'package:grocery_delivery_mobile_app/resources/text_style_resource.dart';
import 'package:grocery_delivery_mobile_app/screens/home_screen.dart';
import 'package:grocery_delivery_mobile_app/widgets/bottom_nav_item.dart';
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
  int indexActive = 0;
  final List<BottomNavItemModel> _bottomNavData = [
    BottomNavItemModel(name: 'Home', icon: Icon(Icons.home)),
    BottomNavItemModel(name: 'Favourite', icon: Icon(Icons.favorite_outline)),
    BottomNavItemModel(name: 'Wallet', icon: Icon(Icons.wallet_outlined)),
    BottomNavItemModel(name: 'Cart', icon: Icon(Icons.shopping_cart_outlined)),
    BottomNavItemModel(name: 'Profile', icon: Icon(Icons.person_2_outlined)),
  ];

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
            setState(() {
              indexActive = index;
            });
          },
          tabs: [
            for (int index = 0; index < _bottomNavData.length; index++)
              _bottomNavItem(
                  name: _bottomNavData[index].name,
                  icon: _bottomNavData[index].icon,
                  selected: index == indexActive)
          ],
        ),
      ),
    );
  }

  Widget _bottomNavItem(
          {required String name, required Icon icon, required bool selected}) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Tab(icon: icon),
          const GapHeight(4),
          Text(
            name,
            style: selected
                ? textStyle10PrimaryColor
                : textStyle10BlackSecondaryTextColor,
          )
        ],
      );
}

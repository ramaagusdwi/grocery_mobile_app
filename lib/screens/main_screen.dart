import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grocery_delivery_mobile_app/models/bottom_nav_item_model.dart';
import 'package:grocery_delivery_mobile_app/resources/color_resource.dart';
import 'package:grocery_delivery_mobile_app/resources/text_style_resource.dart';
import 'package:grocery_delivery_mobile_app/screens/home_screen.dart';
import 'package:grocery_delivery_mobile_app/widgets/bottom_nav_item.dart';
import 'package:grocery_delivery_mobile_app/widgets/gap_width.dart';
import 'package:grocery_delivery_mobile_app/widgets/side_bar_layout.dart';
import 'package:grocery_delivery_mobile_app/widgets/gap_height.dart';

final GlobalKey<ScaffoldState> key = GlobalKey(); // Create a key

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  int _currentIndex = 0;

  final List<BottomNavItemModel> _bottomNavData = [
    BottomNavItemModel(
        name: 'Home',
        icon: const Icon(Icons.home_outlined),
        iconActive: const Icon(Icons.home)),
    BottomNavItemModel(
        name: 'Favourite',
        icon: const Icon(Icons.favorite_outline),
        iconActive: const Icon(Icons.favorite)),
    BottomNavItemModel(
        name: 'Wallet',
        icon: const Icon(Icons.wallet_outlined),
        iconActive: const Icon(Icons.wallet)),
    BottomNavItemModel(
        name: 'Cart',
        icon: const Icon(Icons.shopping_cart_outlined),
        iconActive: const Icon(Icons.shopping_cart)),
    BottomNavItemModel(
        name: 'Profile',
        icon: const Icon(Icons.person_outlined),
        iconActive: const Icon(Icons.person)),
  ];

  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    super.initState();
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _currentIndex,
      length: controller.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        key: key,
        drawer: SideBarLayout(),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0), // here the desired height
          child: AppBar(
            elevation: 0,
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            centerTitle: true,
            title: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Location',
                    style: textStyle14BlackColorLight,
                  ),
                  const GapHeight(4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on, color: blackColor),
                      GapWidth(2.0),
                      const Text('New York, USA',
                          style: textStyle14BlackColorMedium),
                      GapWidth(2.0),
                      const Icon(Icons.keyboard_arrow_down, color: blackColor),
                    ],
                  )
                ],
              ),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: blackColor,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            actions: const [
              Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const [
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
              _currentIndex = index;
            });
          },
          tabs: [
            for (int index = 0; index < _bottomNavData.length; index++)
              _bottomNavItem(
                  item: _bottomNavData[index], selected: index == _currentIndex)
          ],
        ),
      ),
    );
  }

  Widget _bottomNavItem(
          {required BottomNavItemModel item, required bool selected}) =>
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Tab(icon: selected ? item.iconActive : item.icon),
          const GapHeight(4),
          Text(
            item.name,
            style: selected
                ? textStyle10PrimaryColor
                : textStyle10BlackSecondaryTextColor,
          )
        ],
      );
}

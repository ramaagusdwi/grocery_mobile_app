import 'package:flutter/material.dart';
import 'package:grocery_delivery_mobile_app/resources/color_resource.dart';
import 'package:grocery_delivery_mobile_app/widgets/gap_height.dart';



class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return SafeArea(
      child: Container(
        color: primaryColor,
        width: width * 0.8,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/men.png'),
                  ),
                  GapHeight(10),
                  Text(
                    'Welcome Rudi!',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children:  [
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: const ListTile(
                      leading: Icon(Icons.list_alt_sharp,
                          size: 24, color: Colors.white),
                      title: Text(
                        'Your last choices',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),                 
                  ListTile(
                    leading:
                        Icon(Icons.discount, size: 24, color: Colors.white),
                    title: Text(
                      'Offer and Promotions',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                   ListTile(
                    leading: Icon(Icons.history_edu_sharp,
                        size: 24, color: Colors.white),
                    title: Text(
                      'Order History',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                   ListTile(
                    leading:
                        Icon(Icons.groups, size: 24, color: Colors.white),
                    title: Text(
                      'Refer & Earn',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.groups, size: 24, color: Colors.white),
                    title: Text(
                      'Refer & Earn',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                   ListTile(
                    leading:
                        Icon(Icons.phone, size: 24, color: Colors.white),
                    title: Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.logout, size: 24, color: Colors.white),
                    title: Text(
                      'Help Center',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                   ListTile(
                    leading:
                        Icon(Icons.star_border, size: 24, color: Colors.white),
                    title: Text(
                      'Rate Us',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.info_outline, size: 24, color: Colors.white),
                    title: Text(
                      'About Us',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.logout, size: 24, color: Colors.white),
                    title: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

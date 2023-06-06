import 'package:flutter/material.dart';
import 'package:grocery_delivery_mobile_app/gap_height.dart';
import 'package:grocery_delivery_mobile_app/side_bar_layout.dart';

void main() {
  runApp(const MaterialApp(home: HomePage(),));
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return  Scaffold(
      body: Stack(
        children: [
          //Lets start first creating Background of the App
          Container(
            decoration: const BoxDecoration(
             color: Color(0xFF01AC66)
            ),           
          ),

          //Now lets make the Navigation menu
          SideBarLayout(), 
        ],
      ),
    );
  }
}


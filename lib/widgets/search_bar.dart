import 'package:flutter/material.dart';
import 'package:grocery_delivery_mobile_app/resources/color_resource.dart';
import 'package:grocery_delivery_mobile_app/resources/text_style_resource.dart';
import 'package:grocery_delivery_mobile_app/widgets/text_field_custom.dart';

class GrocerySearchBar extends StatelessWidget {
  const GrocerySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return CustomTextField(
      heightTextField: 4,
      prefixIcon: const Icon(Icons.search, color: blackColor),
      suffixIcon: Container(
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(8), topRight: Radius.circular(8)),
        ),
        child: const Icon(
          Icons.format_list_bulleted_rounded,
          color: whiteColor,
          size: 24,
        ),
      ),
      iconSquareSize: 34,
      radius: 8.0,
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
    );
  }
}

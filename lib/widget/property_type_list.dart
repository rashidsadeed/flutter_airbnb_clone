import 'package:airbnb_clone/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class PropertyTypeList extends StatefulWidget {
  const PropertyTypeList({super.key});

  @override
  State<PropertyTypeList> createState() => _PropertyTypeListState();
}

class _PropertyTypeListState extends State<PropertyTypeList> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;

    final List<Map<String, dynamic>> propertyTypes = [
      {"type" : "Hotel", "icon": Icons.hotel},
      {"type" : "Apartment", "icon": Icons.apartment},
      {"type" : "BnB", "icon": Icons.bedroom_child},
      {"type" : "Villa", "icon": Icons.villa},
      {"type" : "Resort", "icon": Icons.holiday_village},
    ];
    return SizedBox(
      height: 56.0,
      child: ListView.builder(
          itemCount: propertyTypes.length,
          itemBuilder: (context, index) {
            return Container(
              width: size.width * 2.0,
              child: Column(
                children: [
                  Icon(propertyTypes[index]['icon'],
                  color: appGrey
                  ),
                  Text(
                    propertyTypes[index]["type"],
                    style: textTheme.bodySmall,
                  )
                ],
              ),
            );
          })
    );
  }
}

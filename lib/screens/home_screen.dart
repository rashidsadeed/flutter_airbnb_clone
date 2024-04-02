
import 'package:airbnb_clone/shared/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widget/property_type_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 128,
        flexibleSpace: Container(
          child: Stack(
            children: [
              const Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: PropertyTypeList(),
              ),

              Positioned(
                top: 70.0,
                right: 8.0,
                child: IconButton(onPressed: (){
                }, icon: Icon(Icons.tune))
              ),

              Positioned(
                left: 16.0,
                right: 72.0,
                top: 64.0,
                child: GestureDetector(
                  onTap: (){
                    context.pushNamed("booking_details");
                  },
                  child: Hero(
                    tag: "search",
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0
                      ),
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(color: appGrey, width: 3.0),
                        borderRadius: BorderRadius.circular(32.0),
                        boxShadow: [
                          BoxShadow(
                            color: appGrey.withOpacity(0.5),
                            blurRadius: 8.0,
                            spreadRadius: 8.0,
                            offset: const Offset(0.0, 4.0)
                          ),
                      ],
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search),
                          const SizedBox(width: 8.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Where to?",
                                  style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)
                              ),
                              Text(
                                  "Any Where | Any Week | Add Guest",
                                  style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: const Center(),
    );
  }
}

import "package:airbnb_clone/shared/theme/colors.dart";
import "package:flutter/material.dart";
import "navigation/app_router.dart";


void main(){
  runApp(const AirbnbApp());
}

class AirbnbApp extends StatelessWidget {
  const AirbnbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: appRed),
      ),
      routerConfig: AppRouter().router,
    );
  }
}

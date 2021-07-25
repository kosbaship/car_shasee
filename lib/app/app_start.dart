import 'package:car_shasee/app/app_theme.dart';
import 'package:car_shasee/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class CarSerialNumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: HomeScreen(),
      ),
    );
  }
}

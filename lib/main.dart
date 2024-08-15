import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poultry_management/utils/color_scheme.dart';
import 'package:poultry_management/views/dashboard.dart';
import 'package:poultry_management/views/pages/auth/login_page.dart';
import 'package:poultry_management/views/pages/auth/registration_page.dart';

import 'views/pages/myFarm/inventory_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Manager',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      home: MenuNavigationPage(),
      getPages: [
        GetPage(name: "/register", page: () => const RegistrationPage()),
        GetPage(name: "/login", page: () => const LoginPage()),
        GetPage(name: "/inventory", page: ()=>const MyFarmInventoryPage())
      ],
    );
  }
}

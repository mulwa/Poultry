import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poultry_management/controllers/navigation_controller.dart';
import 'package:poultry_management/views/pages/experts_page.dart';
import 'package:poultry_management/views/pages/my_farm_page.dart';
import 'package:poultry_management/views/pages/suppliers_page.dart';

class MenuNavigationPage extends StatelessWidget {
   MenuNavigationPage({super.key});
  final page = [
    const MyFarmPage(),
    const SuppliersPage(),
    const ExpertsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.put(NavigationController());
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Poultry Manager",),
        centerTitle: true,
        // elevation: 4,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {  },),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add))
        ],
      ),
      body: Obx(()=> page[navigationController.selectedTab.value]),
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            print('Selected $index');
            navigationController.onTabSelected(index);
          },
          selectedIndex: 0,
          destinations: const <NavigationDestination>[
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: 'My Farm',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.engineering),
              icon: Icon(Icons.engineering_outlined),
              label: 'Supplies',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.bookmark),
              icon: Icon(Icons.bookmark_border),
              label: 'Experts',
            ),
          ],
        ),
    ));
  }
}
import 'package:flutter/material.dart';

class MyFarmPage extends StatelessWidget {
  const MyFarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: [
                MenuCard(
                  title: "Inventory",
                  icon: Icons.inventory,
                  onPress: () {},
                ),
                MenuCard(
                  title: "Medication",
                  icon: Icons.medical_information,
                  onPress: () {},
                ),
                MenuCard(
                  title: "Cash Flow",
                  icon: Icons.receipt_long,
                  onPress: () {},
                ),
                MenuCard(
                  title: "Reports",
                  icon: Icons.bar_chart,
                  onPress: () {},
                ),
                MenuCard(
                  title: "Farm Setup",
                  icon: Icons.settings,
                  onPress: () {},
                ),
                MenuCard(
                  title: "Notifications",
                  icon: Icons.notifications,
                  onPress: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  const MenuCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Ink(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,size: 40,),
            const SizedBox(
              height: 10,
            ),
            Text(title, style: const TextStyle(fontSize: 16.0),)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouter;

import '../router.dart';

class NavigationItem {
  final String label;
  final Function() onNavigate;
  final IconData icon;

  NavigationItem(
    this.label,
    this.onNavigate,
    this.icon,
  );
}

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationItems = [
      NavigationItem(
        "Transactions",
        () {
          GoRouter.of(context).go(routeTransactions);
        },
        Icons.home,
      ),
      NavigationItem(
        "Contacts",
        () {
          GoRouter.of(context).go(routeContacts);
        },
        Icons.people,
      ),
    ];

    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Expanded(
              child: ListView.separated(
                itemCount: navigationItems.length,
                separatorBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                  );
                },
                itemBuilder: (context, index) {
                  final item = navigationItems[index];
                  return DrawerItem(
                    icon: item.icon,
                    label: item.label,
                    onTap: item.onNavigate,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function() onTap;

  const DrawerItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigo.withOpacity(0.1),
          child: Icon(
            icon,
            color: Colors.indigo,
          ),
        ),
        title: Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

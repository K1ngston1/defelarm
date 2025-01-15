import 'package:defalarm_projects/manual_drawer.dart';
import 'package:defalarm_projects/settings_drawer.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  Widget buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: const Color(0xFFBFC8CC),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFBFC8CC),
          fontSize: 19.0,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1B2022),
      child: ListView(
        children: <Widget>[
          ListTile(
            title: const Text(
              'Defelarm',
              style: TextStyle(
                  color: Color(
                    0xFFBFC8CC,
                  ),
                  fontSize:
                      19.0 // Використовуйте Color(0xFF...) для коректного визначення кольору.
                  ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          buildListTile(
            icon: Icons.alarm,
            title: 'Будільники',
            onTap: () {
              Navigator.pop(context); // Обробка іншого пункту
            },
          ),
          buildListTile(
            icon: Icons.settings,
            title: 'Налаштування',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ),
              );
            },
          ),
          buildListTile(
            icon: Icons.book,
            title: 'Довідник',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Manual(),
                ),
              ); // Обробка іншого пункту
            },
          ),
          const Divider(),
          buildListTile(
            icon: Icons.favorite,
            title: 'Дякую за підтримку',
            onTap: () {
              Navigator.pop(context); // Обробка іншого пункту
            },
          ),
          buildListTile(
            icon: Icons.bug_report,
            title: 'Повідомте про баг',
            onTap: () {
              Navigator.pop(context); // Обробка іншого пункту
            },
          ),
        ],
      ),
    );
  }
}

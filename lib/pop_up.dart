import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  const PopUp({super.key});

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
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
            title: 'Alarms',
            onTap: () {
              Navigator.pop(context); // Обробка іншого пункту
            },
          ),
          buildListTile(
            icon: Icons.settings,
            title: 'Settings',
            onTap: () {
              Navigator.pop(context); // Обробка іншого пункту
            },
          ),
          buildListTile(
            icon: Icons.book,
            title: 'Manual',
            onTap: () {
              Navigator.pop(context); // Обробка іншого пункту
            },
          ),
          const Divider(),
          buildListTile(
            icon: Icons.favorite,
            title: 'Thanks fo effort',
            onTap: () {
              Navigator.pop(context); // Обробка іншого пункту
            },
          ),
          buildListTile(
            icon: Icons.bug_report,
            title: 'Report bug',
            onTap: () {
              Navigator.pop(context); // Обробка іншого пункту
            },
          ),
        ],
      ),
    );
  }
}

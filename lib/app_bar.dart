import 'package:flutter/material.dart';

class AppBarDesign extends StatefulWidget implements PreferredSizeWidget {
  const AppBarDesign({super.key});

  @override
  State<AppBarDesign> createState() => _AppBarDesignState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarDesignState extends State<AppBarDesign> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF1B2022), // HEX-код кольору
      title: const Text(
        "Будільник",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      centerTitle: false,
      leading: IconButton(
        color: Colors.white,
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.menu),
      ),

      actions: <Widget>[
        IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: const Icon(Icons.add),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'body_main.dart';
import 'pop_up.dart';

void main() => runApp(MainWindow());

class MainWindow extends StatefulWidget {
  const MainWindow({super.key});

  @override
  State<MainWindow> createState() => _MainWindowState();
}

class _MainWindowState extends State<MainWindow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BodyMain(),
        appBar: AppBarDesign(),
        drawer: const PopUp(),
      ),
    ); // Ваш AppBar
  }
}

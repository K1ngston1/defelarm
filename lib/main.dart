import 'package:flutter/material.dart';

void main() {
  final navigatorKey = GlobalKey<NavigatorState>();
  return runApp(
    MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Defalarm'),
          centerTitle: true,
          backgroundColor: Colors.grey.shade100,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  navigatorKey.currentContext!,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        Image.asset(
          'images/park.png',
          width: 200,
          height: 150,
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            SizedBox(
              width: 120.0,
            ),
            Icon(
              Icons.alarm,
              size: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Залишилось\n1 год 32 хвилини',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        const SizedBox(height: 140),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                print('Button pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade100,
                foregroundColor: Colors.black,
                minimumSize: const Size(100, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Без тривог :)',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 100),
            Text(
              'Перебуваю поза укриттям',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 90),
            Switch(
              value: _isSwitched,
              activeColor: Colors.red,
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.blue.shade100,
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Налаштування'),
        backgroundColor: Colors.grey.shade100,
      ),
      body: const Center(
        child: Text('Тут будуть ваші налаштування'),
      ),
    );
  }
}

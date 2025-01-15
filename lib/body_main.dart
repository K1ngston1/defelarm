import 'package:flutter/material.dart';

class BodyMain extends StatefulWidget {
  const BodyMain({super.key});

  @override
  State<BodyMain> createState() => _BodyMainState();
}

class _BodyMainState extends State<BodyMain> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color(0xFF1B2022),
      ),
    );
  }
}

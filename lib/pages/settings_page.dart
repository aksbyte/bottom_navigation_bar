import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent[200],
      child: Center(
        child: Text(
          'S E T T I N G S', style: TextStyle(color:Colors.white),
        ),
      ),
    );
  }
}

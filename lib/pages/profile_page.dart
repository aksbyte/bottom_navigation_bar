import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: Center(
        child: Text(
            'P R O F I L E', style: TextStyle(color:Colors.white),
        ),
      ),
    );
  }
}

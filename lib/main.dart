import 'package:flutter/material.dart';
import './HomeScreen.dart';
import './DrawerScreen.dart';
import './AddPet.dart';

void main() => runApp(MaterialApp(
      home: MainScreen(),
    ));

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), AddPet(), HomeScreen()],
      ),
    );
  }
}

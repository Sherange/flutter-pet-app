import 'package:flutter/material.dart';

class AddPet extends StatefulWidget {
  const AddPet({Key? key}) : super(key: key);

  @override
  _AddPetState createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  double xoffset = 200;
  double yoffset = 180;
  double scalefactor = 0.6;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      duration: Duration(microseconds: 250),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white70, // added
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
    );
  }
}

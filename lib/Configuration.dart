import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor = Color(0xff008080);

List<Map> categories = [
  {"name": "Cats", "path": 'images/cat.png'},
  {"name": "Dog", "path": 'images/dog.png'},
  {"name": "Horse", "path": 'images/horse.png'},
  {"name": "Parrot", "path": 'images/parrot.png'},
  {"name": "Rabbit", "path": 'images/rabbit.png'}
];

List<Map> drawerItems = [
  {"icon": FontAwesomeIcons.paw, "title": 'Adoption'},
  {"icon": Icons.mail, "title": 'Donation'},
  {"icon": FontAwesomeIcons.plus, "title": 'Add Pet'},
  {"icon": Icons.favorite, "title": 'Favorites'},
];

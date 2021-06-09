import 'package:flutter/material.dart';
import './Configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 50),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sherange Fonseka",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Active Status",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              )
            ],
          ),
          Column(
            children: drawerItems
                .map((e) => Row(
                      children: [
                        Icon(
                          e["icon"],
                          color: Colors.white,
                          size: 16,
                        ),
                        SizedBox(
                          height: 60,
                          width: 20,
                        ),
                        Text(
                          e["title"],
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
                .toList(),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              Text(
                "Settings",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Log out",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

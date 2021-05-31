import 'package:flutter/material.dart';
import './Configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      duration: Duration(milliseconds: 250),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        onPressed: () => {
                          setState(() {
                            xoffset = 0;
                            yoffset = 0;
                            scalefactor = 1;
                            isDrawerOpen = false;
                          })
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      )
                    : IconButton(
                        onPressed: () => {
                          setState(() {
                            xoffset = 230;
                            yoffset = 150;
                            scalefactor = 0.6;
                            isDrawerOpen = true;
                          })
                        },
                        icon: Icon(Icons.notes),
                      ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Location", style: TextStyle(fontSize: 14)),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              onPressed: () => {},
                              icon: Icon(
                                Icons.location_on,
                                color: primaryColor,
                                size: 15,
                              ),
                            ),
                            Text(
                              "Colombo, ",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text("Sri Lanka", style: TextStyle(fontSize: 16)),
                          ]),
                    ]),
                CircleAvatar(),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 40, 30),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: primaryColor,
                    ),
                    hintText: 'Search Pet',
                    filled: true,
                    fillColor: Colors.grey[200]),
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white, // added
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}

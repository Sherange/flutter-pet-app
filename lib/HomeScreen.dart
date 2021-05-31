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
      height: MediaQuery.of(context).size.height,
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),

            //Custom AppBar
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

            //Search Input
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
            ),

            //Cateories List
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            categories[index]["path"],
                            height: 50,
                            width: 50,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 30,
                                  offset: Offset(0, 10),
                                )
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(categories[index]['name']),
                        )
                      ],
                    );
                  }),
            ),

            //PetCat 2
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Align(
                        child: Image.asset('images/pet-cat2.png'),
                      ),
                    ]),
                  ),
                  Expanded(
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              )
                            ]),
                      )
                    ]),
                  )
                ],
              ),
            ),

            //PetCat1
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Align(
                        child: Image.asset('images/pet-cat1.png'),
                      ),
                    ]),
                  ),
                  Expanded(
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              )
                            ]),
                      )
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white, // added
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}

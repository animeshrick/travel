import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var image = "assets/home_kolkata.jpeg";
    var listViewImage = "assets/listViewImage.jpg";
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Image.asset(image),
          Positioned(
              top: 20,
              child: IconButton(
                  icon: Icon(Icons.keyboard_backspace), onPressed: () {})),
          Padding(
            padding: EdgeInsets.fromLTRB(45, 50, 20, 10),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30.0),
                  ),
                ),
                filled: true,
                prefixIcon: Icon(Icons.search),
                labelText: 'Where are you going ?',
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 10,
            child: Column(
              children: [
                Text(
                  "Kolkata, WB, INDIA",
                  style: TextStyle(fontSize: 20),
                ),
                Text("Kolkata city is best"),
              ],
            ),
          ),
          Positioned(
            top: 300,
            left: 20,
            child: Column(
              children: [
                RaisedButton(
                  color: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.redAccent)),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (ctx) => Home()));
                  },
                  child: Text('Explore'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 350,
            left: 20,
            child: Text(
              "Top Cities",
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 350, 0, 50),
            child: ListView.builder(
              padding: EdgeInsets.only(
                top: 20,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext ctx, index) {
                return Row(
                  children: [
                    Image.asset(listViewImage),
                    SizedBox(
                      width: 10,
                    )
                  ],
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mood),
            label: '',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.blue,
      ),
    );
  }
}

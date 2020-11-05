import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'UserInfo/SignIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imgUrl =
        'https://images.pexels.com/photos/512890/pexels-photo-512890.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Opacity(
            opacity: 0.8,
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.grey, BlendMode.softLight)),
                ),
              ),
              placeholder: (_, __) =>
                  Center(child: CircularProgressIndicator()),
              errorWidget: (_, __, ___) => Icon(Icons.error),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _height * .1,
                  width: _width * .2,
                ),
                RichText(
                  textScaleFactor: 0.4,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: "Where you are \nwant to go ?\n",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: "Lets take a trip with us ",
                        style: TextStyle(
                          color: Colors.pink,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: _height * 0.5,
                ),
                Center(
                  child: Column(
                   // mainAxisSize: MainAxisSize.max,
                    children: [
                      RaisedButton(
                        child: Text("Register Now",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => SignIn()));
                        },
                        color: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)),
                      ),
                      Text(
                        "Not Now ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

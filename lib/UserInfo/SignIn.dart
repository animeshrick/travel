import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var name = 'assets/signin.jpg';
    var _height = MediaQuery.of(context).size.height;
    //var _width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                name,
                height: _height * 0.4,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 2.0, // has the effect of softening the shadow
                      spreadRadius:
                          2.0, // has the effect of extending the shadow
                      offset: Offset(
                        5.0, // horizontal, move right 10
                        5.0, // vertical, move down 10
                      ),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.person),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 32,
                          minWidth: 32,
                        ),
                        labelText: 'UserName *',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        filled: true,
                        suffixIcon: Icon(Icons.lock_clock),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 32,
                          minWidth: 32,
                        ),
                        labelText: 'Password *',
                      ),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {},
                      child: Text('SignIn'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {},
                child: RichText(
                  textScaleFactor: 0.3,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: "Don\'t have an account! ",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

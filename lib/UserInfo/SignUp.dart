import 'package:flutter/material.dart';

import 'Home.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var name = 'assets/signin.jpg';
    var _height = MediaQuery.of(context).size.height;
    //var _width = MediaQuery.of(context).size.width;
    return Container(
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
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3.0,
                        spreadRadius: 2.0,
                        offset: Offset.zero)
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        suffixIcon: Icon(Icons.contact_mail),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 32,
                          minWidth: 32,
                        ),
                        labelText: 'Email / Phone No. *',
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
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
                        border: InputBorder.none,
                        filled: true,
                        suffixIcon: Icon(Icons.lock_clock),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 32,
                          minWidth: 32,
                        ),
                        labelText: 'Password *',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        suffixIcon: Icon(Icons.lock_clock),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 32,
                          minWidth: 32,
                        ),
                        labelText: 'Confirm Password *',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        suffixIcon: Icon(Icons.account_balance_outlined),
                        suffixIconConstraints: BoxConstraints(
                          minHeight: 32,
                          minWidth: 32,
                        ),
                        labelText: 'Address *',
                      ),
                    ),
                    RaisedButton(
                      color: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=> Home()));
                      },
                      child: Text('SignUp'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

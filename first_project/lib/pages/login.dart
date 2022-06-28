import 'package:first_project/utils/routs.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "ENTER YOUR USERNAME", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "ENTER YOUR PASSWORD", labelText: "PASSWORD"),
                ),
                SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                )
              ],
            ),
          ),
        ])));
  }
}

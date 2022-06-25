import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
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
                SizedBox(height: 20.0),
                ElevatedButton(
                    onPressed: () {
                      print("Hi Amit");
                    },
                    child: Text("Login"))
              ],
            ),
          ),
          Text("Welcome",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ))
        ]));
  }
}

import 'package:first_project/utils/routs.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
                key: _formkey,
                child: Column(children: [
                  Image.asset(
                    "assets/images/login.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Welcome $name",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      )),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                            decoration: InputDecoration(
                                hintText: "ENTER YOUR USERNAME",
                                labelText: "Username"),
                            validator: (Value) {
                              if (Value!.isEmpty) {
                                return "Username cannot be empty";
                              }

                              return null;
                            },
                            onChanged: (Value) {
                              name = Value;
                              setState(() {});
                            }),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "ENTER YOUR PASSWORD",
                              labelText: "PASSWORD"),
                          validator: (Value) {
                            if (Value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (Value.length < 6) {
                              return "Password length should be atleast 6";
                            }

                            return null;
                          },
                        ),
                        SizedBox(height: 40.0),
                        Material(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                            child: InkWell(
                              onTap: (() => moveToHome(context)),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changeButton ? 50 : 150,
                                height: 50,
                                alignment: Alignment.center,
                                child: changeButton
                                    ? Icon(Icons.done, color: Colors.white)
                                    : Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                              ),
                            ))
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                        //   },
                        //   child: Text("Login"),
                        //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                        // )
                      ],
                    ),
                  ),
                ]))));
  }
}

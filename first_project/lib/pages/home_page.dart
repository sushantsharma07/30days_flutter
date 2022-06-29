import 'package:first_project/pages/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Appbar"),
      ),
      body: Center(
          child: Container(
        child: Text("This is body"),
      )),
      drawer: MyDrawer(),
    );
  }
}

import 'package:first_project/pages/models/catelog.dart';
import 'package:first_project/pages/widgets/drawer.dart';
import 'package:first_project/pages/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DumyList = List.generate(50, ((index) => catelogModel.items[0]));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "This is Appbar",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: DumyList.length,
          //itemCount: catelogModel.items.length,
          itemBuilder: (BuildContext context, index) {
            return ItemWidget(
              item: DumyList[index],
              //item: catelogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

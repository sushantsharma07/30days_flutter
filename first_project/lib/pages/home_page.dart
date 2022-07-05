import 'package:first_project/pages/models/catelog.dart';
import 'package:first_project/pages/widgets/drawer.dart';
import 'package:first_project/pages/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    catelogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "This is Appbar",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: (catelogModel.items != null && catelogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: catelogModel.items.length,
                //itemCount: catelogModel.items.length,
                itemBuilder: (BuildContext context, index) => ItemWidget(
                  item: catelogModel.items[index],
                  //item: catelogModel.items[index],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }

  newMethod(loadData()) => loadData();
}

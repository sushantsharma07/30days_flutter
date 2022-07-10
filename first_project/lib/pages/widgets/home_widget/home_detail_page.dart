import 'package:first_project/pages/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catelog.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBlueishColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Add to cart".text.make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: Colors.white,
                child: Column(children: [
                  catalog.name.text.xl4
                      .color(MyTheme.darkBlueishColor)
                      .bold
                      .make(),
                  catalog.desp.text.xl.textStyle(context.captionStyle).make(),
                  10.heightBox,
                  "Amet ut consetetur aliquyam amet gubergren diam diam tempor. Gubergren dolores ut ipsum et et sanctus. Invidunt duo at rebum dolor rebum dolor rebum ipsum et. Gubergren aliquyam erat takimata magna eos, accusam eos eirmod consetetur no diam rebum sed. Gubergren ut sit sadipscing sed lorem invidunt et ipsum lorem.."
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p16()
                ]).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

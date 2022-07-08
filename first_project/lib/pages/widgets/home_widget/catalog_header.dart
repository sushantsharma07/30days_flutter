import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text("Catalog App")
        "Catalog App".text.xl5.bold.color(MyTheme.darkBlueishColor).make(),
        "Trending products".text.xl2.make()
      ],
    );
  }
}

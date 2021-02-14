import 'package:flutter/material.dart';
import 'package:furniture/Screens/detail/detail_screen.dart';
import 'package:furniture/Screens/home/components/product_card.dart';
import 'package:furniture/models/products.dart';

import '../../../size_config.dart';

class RecommendProduct extends StatelessWidget {
  const RecommendProduct({Key key, this.products}) : super(key: key);
//COZ The API provide a list of products
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
          itemCount: products.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  SizeConfig.orientation == Orientation.portrait ? 2 : 4,
              childAspectRatio: 0.693,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (context, index) => ProductCard(
                product: products[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: products[index])));
                },
              )),
    );
  }
}

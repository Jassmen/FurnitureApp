import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/Screens/detail/components/product_description.dart';
import 'package:furniture/Screens/detail/components/product_info.dart';
import 'package:furniture/constants.dart';

import 'package:furniture/models/products.dart';
import 'package:furniture/size_config.dart';


class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height:SizeConfig.orientation == Orientation.landscape?
        SizeConfig.screenWidth :
        SizeConfig.screenHeight - AppBar().preferredSize.height,
        child: Stack(
          children: <Widget>[
             ProductInfo( product: product,),
            Positioned(
              top: defaultSize * 37.5,
                left: 0,
                right: 0,
                child: ProductDescription( product: product,press:(){},)),
            Positioned(
              top: defaultSize *9.5,
              right: -defaultSize * 7.5,
              child: Hero(
                tag: product.id,
                child: Image.network(product.image,
                height: defaultSize*37.8,
                width: defaultSize*36.4,
                fit: BoxFit.cover,),
              ),
            )
          ],
        ),
      ),
    );
  }
}





import 'package:flutter/material.dart';
import 'package:furniture/models/products.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    @required this.press
  }) : super(key: key);


  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      padding: EdgeInsets.only(
          top: defaultSize * 9,
          right: defaultSize * 2,
          left: defaultSize * 2
      ),
      constraints: BoxConstraints(minHeight: defaultSize*44),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultSize * 1.2),
          topRight: Radius.circular(defaultSize * 1.2),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Text(product.subTitle,style: TextStyle(fontSize: defaultSize * 1.8,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Text(product.description,
              style: TextStyle(
                  color: kTextColor.withOpacity(0.7),height: 1.5),),
            SizedBox(height: defaultSize*3,),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                color: kPrimaryColor,
                onPressed: press,
                child: Text('Add to Cart',style: TextStyle(color: kTextColor,fontSize: defaultSize*1.6,fontWeight:FontWeight.bold),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
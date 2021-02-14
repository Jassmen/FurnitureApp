import 'package:flutter/material.dart';

import 'package:furniture/Components/Title_Text.dart';

import 'package:furniture/Screens/home/components/recommended_products.dart';
import 'package:furniture/services/fetchCategories.dart';
import 'package:furniture/services/fetchProduct.dart';
import 'package:furniture/size_config.dart';

import 'Categories.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double defaultSize = SizeConfig.defaultSize;
    // It enable Scrolling
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Padding(
            padding: EdgeInsets.all(defaultSize * 2) , //20
            child: TitleText(title: 'Brows By Categories',),
          ),
          FutureBuilder(
            future: fetchCategory(),
            builder: (context,snapshot) =>
                      snapshot.hasData ?
                      Categories(categories: snapshot.data,) :
                      Center(child:Image.asset('assets/ripple.gif')),
          ),
            Divider(height: 5,),
            Padding(
              padding:  EdgeInsets.all(defaultSize * 2), //20
              child: TitleText(title: 'Recommends For You',),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot){
                return snapshot.hasData ?
                RecommendProduct(products: snapshot.data,)
                    :Center(child:Image.asset('assets/ripple.gif'));
              },
            )

          ],
        ),
      ),
    );
  }

}












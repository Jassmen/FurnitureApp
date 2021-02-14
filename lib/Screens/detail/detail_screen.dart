import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/Screens/detail/components/body.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/models/products.dart';
import 'package:furniture/size_config.dart';

class DetailsScreen extends StatelessWidget{
  final Product product;

  DetailsScreen({Key key ,@required this.product}) :super(key : key);
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/arrow-long-left.svg'),
        onPressed: (){
        Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/bag.svg'),
          onPressed: (){},
        ),
        SizedBox(width:SizeConfig.defaultSize,)
      ],
    );
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'components/body.dart';




class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It help us to  make our UI responsive
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg',
        height: SizeConfig.defaultSize * 2 //20
        ,)),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/scan.svg",
            height: SizeConfig.defaultSize * 2.4, //24
          ),
          onPressed: () {},
        ),
        Center(
          child: Text(
            "Scan",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/Screens/home/components/body.dart';
import 'package:furniture/size_config.dart';

import '../../constants.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // SizeConfig().init(context);   // To make our UI responsive
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg',
        height: SizeConfig.defaultSize * 2 //20
        ,),
    onPressed: (){},
    ),),
      //buildAppBar(),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.red,
      ),

    );
  }

*/
/*  AppBar buildAppBar() {
    return AppBar(
     leading: IconButton(
       icon: SvgPicture.asset('assets/icons/menu.svg',
         height: SizeConfig.defaultSize * 2 //20
         ,),
       onPressed: (){},
     ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/scan.svg',
          height: SizeConfig.defaultSize * 2.4,
          ),
          onPressed: (){

          },
        ),
        Center(
          child:Text('Scan',style:TextStyle(color:kTextColor,fontWeight: FontWeight.bold, ),)
        ),
        SizedBox(width: SizeConfig.defaultSize,)
      ],
    );
  }*//*

}
*/

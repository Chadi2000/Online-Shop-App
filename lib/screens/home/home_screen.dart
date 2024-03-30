import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg') ,
        onPressed: (){},
      ),
      actions: <Widget>[
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.search),
          color: kTextColor,
        ),
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.add_shopping_cart),
        ),
        SizedBox(width: kDefaultPaddin/2,)
      ],

    );
  }
}

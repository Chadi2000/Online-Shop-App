import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/body.dart';
import 'package:shop_app/screens/home/home_screen.dart';

import '../../models/Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),

    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg'),
        onPressed: (){
          Navigator.pop(context);
        },
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

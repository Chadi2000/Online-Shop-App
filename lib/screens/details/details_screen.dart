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
      backgroundColor: product.color,
      leading: IconButton(
        color: Colors.white,
        icon: const Icon(Icons.keyboard_return),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.search),
          color: Colors.white,
        ),
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.add_shopping_cart),
          color: Colors.white,
        ),
        SizedBox(width: kDefaultPaddin/2,)
      ],
    );
  }
}

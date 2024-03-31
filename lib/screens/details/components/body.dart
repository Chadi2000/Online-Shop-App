import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/color_and_size.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height * 0.12, left: 20, right: 20),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: 10,),
                      Description(product: product),
                      SizedBox(height: 10,),
                      CounterWithFavBtn(),
                      SizedBox(height: 10,),
                      AddToCart(product: product)
                      
                      

                     

                    ],
                  ),
                ),
                ProductTitleWithImage(product: product,),


              ],
            ),
          ),
        ],
      ),
    );
  }
}














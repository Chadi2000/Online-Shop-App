import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/body.dart';

import 'cart_counter.dart';
class ColorAndSize extends StatelessWidget {
  final Product product;
  const ColorAndSize({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Color:'),
              Row(
                children: <Widget>[
                  ColorDot(color: product.color,isSelected: true,),
                  ColorDot(color: Color(0xFFF8C078),),
                  ColorDot(color: Color(0xFFA29B9B),),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(color: kTextColor),
                  children: [
                    TextSpan(text: 'Size:\n'),
                    TextSpan(text:"${product.size} Cm", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    )),
                  ]
              )),
        )
      ],
    );
  }
}
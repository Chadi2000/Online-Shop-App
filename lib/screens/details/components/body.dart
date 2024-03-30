import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';

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
                      Row(
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
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product,)

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected =false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      margin: EdgeInsets.only(
          top: 5,
          right: 10
      ),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
        ),
      ),
    );
  }
}





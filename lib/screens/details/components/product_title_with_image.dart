import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  const ProductTitleWithImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Aristocratic Hand Bag",style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w200
          ),),
          Text(product.title,style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,

          ),),

          Row(
            children: <Widget>[
              RichText(
                  text:TextSpan(
                      children: [
                        TextSpan(text: "Price:\n"),
                        TextSpan(
                          text: "\$${product.price}",
                          style:Theme.of(context).
                          textTheme.headline4?.
                          copyWith(color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ]
                  )
              ),
              SizedBox(width: 60,),
              Expanded(child: Image.asset(product.image,
                fit: BoxFit.fitWidth,))
            ],
          )
        ],
      ),
    );
  }
}
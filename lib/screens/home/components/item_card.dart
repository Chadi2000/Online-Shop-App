import 'package:flutter/material.dart';
import '../../../models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({super.key, required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> press(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            height: 150,
            width: 160,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(product.title,style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black
            ),),
          ),
          Text("\$${product.price}", style: TextStyle(
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/Product.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 20),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: product.color
                  )),
              child: IconButton(
                icon: SvgPicture.asset('assets/icons/add_to_cart.svg',),
                onPressed: (){},
              )
          ),
          //SizedBox(width: 10,),
          Expanded(
              child: SizedBox(
                height: 50,
                child: OutlinedButton(
                  style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(product.color),
                  ),
                  onPressed: (){},
                  child: Text('Buy Now'.toUpperCase(), style: TextStyle(
                      fontSize:17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              )
          )

        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

import '../../../models/Product.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(product.description,style: TextStyle(
          height: 1.5
      ),),
    );
  }
}
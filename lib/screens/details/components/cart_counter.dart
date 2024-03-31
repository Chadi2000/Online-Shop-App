import 'package:flutter/material.dart';

import 'body.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});


  @override
  State<CartCounter> createState() => _CartCountetState();
}
class _CartCountetState extends State<CartCounter> {
  int numOfItems = 1;
  void reduceNumOfItems (){
    setState(() {
      if(numOfItems>1){
        numOfItems--;
      }
    });
  }
  void increaseNumOfItems(){
    setState(() {
      if(numOfItems<10){
        numOfItems++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(Icons.remove, reduceNumOfItems),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            numOfItems.toString().padLeft(2,"0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(Icons.add,increaseNumOfItems)



      ],
    );
  }
}

SizedBox buildOutlineButton(IconData icon, VoidCallback onPressed) {
  return SizedBox(
    width: 40,
    height: 32,
    child: OutlinedButton(
      onPressed: onPressed, // Call the onPressed callback here
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero, // Zero padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: Icon(icon),
    ),
  );
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
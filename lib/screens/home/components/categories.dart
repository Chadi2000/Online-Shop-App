import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag","Jewellery","Footwear","Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)=>
              buildCategory(index),
        ),
      ),
    );
  }
  Widget buildCategory (int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex ==index ?  kTextColor : kTextLightColor ,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              width: 30,
              height: 2,
              color: selectedIndex == index? Colors.black : Colors.transparent,

            )
          ],
        ),
      ),
    );
  }
}
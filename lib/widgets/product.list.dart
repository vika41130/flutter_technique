import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.index.dart';

class ProductList extends StatelessWidget {
  const ProductList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Product(productName: 'New Balance',),
          SizedBox(width: 10,),
          Product(productName: 'Puma',),
          SizedBox(width: 10,),
          Product(productName: 'Lacoste',),
        ],
      ),
    );
  }
}
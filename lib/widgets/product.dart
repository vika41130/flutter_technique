import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/cart.bloc/cart.bloc.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Product extends StatelessWidget {
  final String productName;
  const Product({ Key? key, required this.productName }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            productName,
            style: TextStyle(fontSize: 20,),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              context.read<CartBloc>().add(CartAdd(productName: productName));
            },
            child: Text('Add to cart')
          )
        ],
      ),
    );
  }
}
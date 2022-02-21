import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/cart.bloc/cart.bloc.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Text(
                state.productName.toString(),
                style: TextStyle(
                  fontSize: 16,
                ),
              );
            },
          ),
          Icon(Icons.card_giftcard),
        ],
      ),
    );
  }
}

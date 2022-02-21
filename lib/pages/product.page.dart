import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/cart.bloc/cart.bloc.index.dart';
import 'package:flutter_application_1/widgets/widgets.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(),
      child: Container(
        child: Column(
          children: [
            Align(
              child: Cart(),
              alignment: Alignment.centerRight,
            ),
            Expanded(child: ProductList()),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/cart.bloc/cart.bloc.index.dart';
import 'package:flutter_application_1/bloc/favourite.bloc/favourite.bloc.index.dart';
import 'package:flutter_application_1/widgets/widgets.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartBloc(),
        ),
        BlocProvider(
          create: (context) => FavouriteBloc(),
        ),
      ],
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  child: Cart(),
                  alignment: Alignment.centerRight,
                ),
                SizedBox(width: 50,),
                Align(
                  child: Favourite(),
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
            Expanded(child: ProductList()),
          ],
        ),
      ),
    );
  }
}

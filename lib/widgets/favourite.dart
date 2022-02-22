import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/favourite.bloc/favourite.bloc.index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Favourite extends StatelessWidget {
  const Favourite({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BlocBuilder<FavouriteBloc, FavouriteState>(
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
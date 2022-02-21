import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/bloc/cart.bloc/cart.bloc.index.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(): super(CartState(productName: '')) {
    on<CartAdd>((CartAdd event,Emitter<CartState> emit) =>
      emit(CartState(productName: event.productName)));
  }

}
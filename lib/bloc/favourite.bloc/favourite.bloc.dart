import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/bloc/favourite.bloc/favourite.bloc.index.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc(): super(FavouriteState(productName: '')) {
    on<FavouriteAdd>((FavouriteAdd event,Emitter<FavouriteState> emit) =>
      emit(FavouriteState(productName: event.productName)));
  }

}
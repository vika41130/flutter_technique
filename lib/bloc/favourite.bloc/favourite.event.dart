abstract class FavouriteEvent {}

class FavouriteAdd extends FavouriteEvent {
  final String productName;
  FavouriteAdd({required this.productName});
}
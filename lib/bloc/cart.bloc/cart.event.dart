abstract class CartEvent {}

class CartAdd extends CartEvent {
  final String productName;
  CartAdd({required this.productName});
}
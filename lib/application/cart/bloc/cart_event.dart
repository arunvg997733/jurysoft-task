part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart({required HomeModel product}) = _AddToCart;
  const factory CartEvent.removeFromCart({required int index}) =
      _RemoveFromCart;
  const factory CartEvent.reset() = _Reset;
}

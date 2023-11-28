part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState(
      {required List<HomeModel> newList,
      required int total,
      required bool isAdded}) = _CartState;
  factory CartState.initial() =>
      const CartState(newList: [], total: 0, isAdded: false);
}

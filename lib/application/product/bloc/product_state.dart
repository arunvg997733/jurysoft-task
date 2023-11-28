part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState(
      {required HomeModel product,
      required bool isLoading,
      required bool isError}) = _ProductState;
  factory ProductState.initial() {
    return ProductState(
        product: HomeModel(), isLoading: false, isError: false);
  }
}

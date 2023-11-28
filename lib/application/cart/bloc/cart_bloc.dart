import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jurysofttask/domain/home/home_model/home_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<_AddToCart>((event, emit) {
      List<HomeModel> newList = List.from(state.newList);
      newList.add(event.product);
      int amount = state.total + event.product.price!;

      emit(CartState(newList: newList, total: amount, isAdded: true));
    });
    on<_RemoveFromCart>((event, emit) {
      int total = 0;
      List<HomeModel> newList = List.from(state.newList);
      newList.removeAt(event.index);
      for (var element in newList) {
        total = total + element.price!;
      }

      emit(CartState(newList: newList, total: total, isAdded: false));
    });

    on<_Reset>((event, emit) {
      emit(state.copyWith(isAdded: false));
    });
  }
}

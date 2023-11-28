import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jurysofttask/domain/home/home_model/home_model.dart';
import 'package:jurysofttask/domain/home/product/product_service.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductService productService;
  ProductBloc(this.productService) : super(ProductState.initial()) {
    on<_GetProduct>((event, emit) async {
      if (event.id == state.product.id.toString()) {
        return;
      }
      emit(state.copyWith(isLoading: true));
      final result = await productService.getProduct(id: event.id);
      final newState = result.fold(
        (l) {
          return ProductState(
            product: HomeModel(),
            isLoading: false,
            isError: true,
          );
        },
        (r) {
          return ProductState(product: r, isLoading: false, isError: false);
        },
      );
      emit(newState);
    });
  }
}

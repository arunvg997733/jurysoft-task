import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jurysofttask/application/cart/bloc/cart_bloc.dart';
import 'package:jurysofttask/application/main/bloc/main_bloc.dart';
import 'package:jurysofttask/application/product/bloc/product_bloc.dart';
import 'package:jurysofttask/core/constant.dart';
import 'package:jurysofttask/presentation/main_screen/main_screen.dart';
import 'package:jurysofttask/presentation/payment_screen/payment_screen.dart';
import 'package:jurysofttask/presentation/product_screen/widget.dart';
import 'package:jurysofttask/presentation/widget/widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CartBloc>().add(const CartEvent.reset());
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state.isLoading == true) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError == true) {
              return Center(
                  child:
                      textWidget(text: 'Error Occur', color: kBlack, size: 15));
            }
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                        child: textWidget(
                            text: 'Product Details',
                            color: kBlack,
                            size: 25,
                            weight: FontWeight.bold)),
                  ),
                  ProductThumbnailWidget(size: size, product: state.product),
                  ProductTitleAndPriceWidget(product: state.product),
                  BrandAndDiscriptionWidget(
                    product: state.product,
                  ),
                  ProductImageListWidget(product: state.product)
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const ProductBottomWidget(),
    );
  }
}

class ProductBottomWidget extends StatelessWidget {
  const ProductBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state.isError == true) {
            return const SizedBox();
          }
          return SizedBox(
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BlocBuilder<CartBloc, CartState>(
                      builder: (context, cartstate) {
                        return InkWell(
                          onTap: () {
                            if (cartstate.isAdded == true) {
                              context
                                  .read<MainBloc>()
                                  .add(const MainEvent.onChange(index: 1));
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MainScreen(),
                                  ),
                                  (route) => false);
                            } else {
                              context.read<CartBloc>().add(
                                  CartEvent.addToCart(product: state.product));
                              showSnacksBar("Added to Cart", context);
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  cartstate.isAdded == true ? kOrange : kGreen,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: textWidget(
                                  text: cartstate.isAdded == true
                                      ? 'Go to Cart'
                                      : 'Add to Cart',
                                  color: kBlack,
                                  size: 15,
                                  weight: FontWeight.w600),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PaymentScreen(amount: state.product.price!),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: kyellow,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: textWidget(
                              text: 'Buy now',
                              color: kBlack,
                              size: 15,
                              weight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

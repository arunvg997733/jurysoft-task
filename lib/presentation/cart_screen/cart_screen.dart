import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jurysofttask/application/cart/bloc/cart_bloc.dart';
import 'package:jurysofttask/core/constant.dart';
import 'package:jurysofttask/presentation/cart_screen/widget.dart';
import 'package:jurysofttask/presentation/widget/widget.dart';
import 'package:lottie/lottie.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: textWidget(
                      text: 'My Cart',
                      color: kBlack,
                      size: 25,
                      weight: FontWeight.bold),
                ),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    if (state.newList.isEmpty) {
                      return Center(
                          child: Column(
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          SizedBox(
                              height: 200,
                              width: 200,
                              child: Lottie.asset('assets/emptycart.json')),
                        ],
                      ));
                    }
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final productData = state.newList[index];
                        return CartTile(
                          product: productData,
                          index: index,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return kHeight20;
                      },
                      itemCount: state.newList.length,
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const CartBottomBar(),
    );
  }
}

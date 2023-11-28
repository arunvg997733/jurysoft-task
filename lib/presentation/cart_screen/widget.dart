import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jurysofttask/application/cart/cart_bloc.dart';
import 'package:jurysofttask/core/constant.dart';
import 'package:jurysofttask/domain/home/home_model/home_model.dart';
import 'package:jurysofttask/presentation/payment_screen/payment_screen.dart';
import 'package:jurysofttask/presentation/widget/widget.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state.newList.isEmpty) {
            return const SizedBox();
          }
          return SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textWidget(
                      text: '₹ ${state.total}',
                      color: kBlack,
                      size: 25,
                      weight: FontWeight.w600),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kyellow),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30),
                        child: textWidget(
                            text: 'Place order',
                            color: kBlack,
                            size: 20,
                            weight: FontWeight.w600),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            PaymentScreen(amount: state.total),
                      ));
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CartTile extends StatelessWidget {
  const CartTile({super.key, required this.product, required this.index});
  final HomeModel product;
  final int index;
  @override
  Widget build(BuildContext context) {
    // final sizeW = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(blurRadius: 5, color: kGrey)]),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(product.thumbnail!),
                            fit: BoxFit.cover)),
                  ),
                  kWidth10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        singleLineTextWidget(
                            text: product.title!, color: kBlack, size: 25),
                        kHeight10,
                        singleLineTextWidget(
                            text: '₹ ${product.price}',
                            color: kBlack,
                            size: 20,
                            weight: FontWeight.bold),
                      ],
                    ),
                  )
                ],
              ),
              kHeight10,
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        context
                            .read<CartBloc>()
                            .add(CartEvent.removeFromCart(index: index));
                        showSnacksBar('Item removed', context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: kRed,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: textWidget(
                                text: 'Remove', color: kBlack, size: 15)),
                      ),
                    )),
                    kWidth10,
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PaymentScreen(amount: product.price!),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: kyellow,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: textWidget(
                                text: 'Buy this one', color: kBlack, size: 15)),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Row(
//                           children: [
//                             Container(
//                                 height: 30,
//                                 color: kGrey,
//                                 width: 40,
//                                 child: Center(
//                                     child: textWidget(
//                                         text: '-', color: kBlack, size: 25))),
//                             Container(
//                               height: 30,
//                               color: kLateGrey,
//                               width: 50,
//                             ),
//                             Container(
//                                 height: 30,
//                                 color: kGrey,
//                                 width: 40,
//                                 child: Center(
//                                     child: textWidget(
//                                         text: '+', color: kBlack, size: 25)))
//                           ],
//                         )

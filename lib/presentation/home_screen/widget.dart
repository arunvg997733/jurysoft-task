import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jurysofttask/application/home/home_bloc.dart';
import 'package:jurysofttask/application/product/product_bloc.dart';
import 'package:jurysofttask/core/constant.dart';
import 'package:jurysofttask/domain/home/home_model/home_model.dart';
import 'package:jurysofttask/presentation/product_screen/product_screen.dart';
import 'package:jurysofttask/presentation/widget/widget.dart';

class ProductSliderWidget extends StatelessWidget {
  const ProductSliderWidget({
    super.key,
    required this.sizeW,
  });

  final double sizeW;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeW * 0.6,
      child: BlocBuilder<HomeBloc, HomeState>(
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
          return PageView.builder(
            itemCount: state.pageImage.length,
            controller: PageController(initialPage: state.currentIndex),
            onPageChanged: (value) {
              context.read<HomeBloc>().add(HomeEvent.onChange(index: value));
            },
            itemBuilder: (context, index) {
              final image = state.pageImage[index];
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(color: kGrey, blurRadius: 5)],
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class SliderIndicatorWidget extends StatelessWidget {
  const SliderIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              state.pageImage.length,
              (index) => Padding(
                padding: const EdgeInsets.all(2.5),
                child: Container(
                  height: 5,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: state.currentIndex == index ? kBlue : kLateGrey,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return SizedBox(
            height: height - width * 0.7,
            child: const Center(child: CircularProgressIndicator()),
          );
        } else if (state.isError == true) {
          return SizedBox(
            height: height - width * 0.7,
            child: Center(
                child:
                    textWidget(text: "Error Occur", color: kBlack, size: 15)),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final productData = state.newList[index];
                return ProductListTile(
                  product: productData,
                );
              },
              separatorBuilder: (context, index) {
                return kHeight20;
              },
              itemCount: state.newList.length),
        );
      },
    );
  }
}

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    super.key,
    required this.product,
  });
  final HomeModel product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [BoxShadow(color: kGrey, blurRadius: 5)]),
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  image: DecorationImage(
                      image: NetworkImage(product.thumbnail!),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textWidget(
                        text: product.title!,
                        color: kBlack,
                        size: 18,
                        weight: FontWeight.w500),
                    Row(
                      children: [
                        iconWidget(icon: Icons.star, color: kyellow, size: 15),
                        kWidth5,
                        textWidget(
                            text: product.rating!.toStringAsFixed(1),
                            color: kBlack,
                            size: 15,
                            weight: FontWeight.bold),
                        kWidth5,
                        Expanded(
                          child: textWidget(
                              text: '(${product.stock} reviews)',
                              color: kGrey,
                              size: 15),
                        )
                      ],
                    ),
                    textWidget(
                        text: '₹ ${product.price}',
                        color: kBlack,
                        size: 20,
                        weight: FontWeight.bold)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        context
            .read<ProductBloc>()
            .add(ProductEvent.getProduct(id: product.id.toString()));
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ProductScreen(),
        ));
      },
    );
  }
}

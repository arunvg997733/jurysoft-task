import 'package:flutter/material.dart';
import 'package:jurysofttask/core/constant.dart';
import 'package:jurysofttask/domain/home/home_model/home_model.dart';
import 'package:jurysofttask/presentation/widget/widget.dart';

class ProductThumbnailWidget extends StatelessWidget {
  const ProductThumbnailWidget(
      {super.key, required this.size, required this.product});

  final double size;
  final HomeModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: size * 0.7,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(product.thumbnail!), fit: BoxFit.cover)),
    );
  }
}

class ProductImageListWidget extends StatelessWidget {
  const ProductImageListWidget({super.key, required this.product});
  final HomeModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 1.5,
        crossAxisCount: 1,
        mainAxisSpacing: 15,
        children: List.generate(
          product.images!.length,
          (index) {
            final image = product.images![index];
            return Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(color: kGrey, blurRadius: 5)],
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15)),
            );
          },
        ),
      ),
    );
  }
}

class ProductTitleAndPriceWidget extends StatelessWidget {
  const ProductTitleAndPriceWidget({
    super.key,
    required this.product,
  });
  final HomeModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(
              text: product.title!,
              color: kBlack,
              size: 30,
              weight: FontWeight.bold),
          kHeight10,
          Row(
            children: [
              textWidget(
                  text: "₹ ${product.price}",
                  color: kBlack,
                  size: 20,
                  weight: FontWeight.bold),
              const Spacer(),
              Row(
                children: [
                  iconWidget(icon: Icons.star, color: kyellow, size: 20),
                  kWidth5,
                  textWidget(
                      text: product.rating!.toStringAsFixed(1),
                      color: kBlack,
                      size: 20,
                      weight: FontWeight.bold),
                  kWidth5,
                  textWidget(
                      text: '(${product.stock} reviews)',
                      color: kGrey,
                      size: 20)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class BrandAndDiscriptionWidget extends StatelessWidget {
  const BrandAndDiscriptionWidget({
    super.key,
    required this.product,
  });
  final HomeModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(
            text: product.brand!,
            color: kBlack,
            size: 20,
            weight: FontWeight.bold,
          ),
          kHeight10,
          discriptionTextWidget(
            text: product.description!,
            color: kGrey,
            size: 15,
          )
        ],
      ),
    );
  }
}

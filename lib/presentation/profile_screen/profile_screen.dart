import 'package:flutter/widgets.dart';
import 'package:jurysofttask/core/constant.dart';
import 'package:jurysofttask/presentation/widget/widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(
                text: 'Hi Arun',
                color: kBlack,
                size: 30,
                weight: FontWeight.bold),
            kHeight10,
            const TextContainer(text: 'Your Order'),
            kHeight10,
            const TextContainer(text: 'Wishlist'),
            kHeight10,
            const TextContainer(text: 'Coupons'),
            kHeight10,
            const TextContainer(text: 'Help Center'),
            kHeight10,
            const AddressWidget()
          ],
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [BoxShadow(blurRadius: 5, color: kGrey)],
          color: kWhite),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: textWidget(text: text, color: kBlack, size: 20),
      ),
    );
  }
}

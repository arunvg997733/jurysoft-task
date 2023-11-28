import 'package:flutter/material.dart';
import 'package:jurysofttask/core/constant.dart';

Widget textWidget(
    {required String text,
    required Color color,
    required double size,
    FontWeight? weight}) {
  return Text(
    text,
    maxLines: 2,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        overflow: TextOverflow.ellipsis),
  );
}

Widget singleLineTextWidget(
    {required String text,
    required Color color,
    required double size,
    FontWeight? weight}) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        overflow: TextOverflow.ellipsis),
  );
}

Widget iconWidget({
  required IconData icon,
  required Color color,
  required double size,
}) {
  return Icon(
    icon,
    color: color,
    size: size,
  );
}

Widget discriptionTextWidget(
    {required String text,
    required Color color,
    required double size,
    FontWeight? weight}) {
  return Text(
    text,
    maxLines: 20,
    style: TextStyle(
        height: 1.5,
        color: color,
        fontSize: size,
        fontWeight: weight,
        overflow: TextOverflow.ellipsis),
  );
}

showSnacksBar(String text, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kGrey,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      duration: const Duration(seconds: 2),
      content: textWidget(text: text, color: kBlack, size: 15),
    ),
  );
}

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    super.key,
  });

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(text: 'Delivery to :', color: kBlack, size: 20),
            kHeight5,
            textWidget(
                text: '  Arun V G',
                color: kBlack,
                size: 20,
                weight: FontWeight.w500),
            textWidget(text: '  Thrissur', color: kBlack, size: 20),
            textWidget(text: '  Kerala', color: kBlack, size: 20),
            textWidget(text: '  India', color: kBlack, size: 20)
          ],
        ),
      ),
    );
  }
}

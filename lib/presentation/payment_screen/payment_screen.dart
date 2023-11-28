import 'package:flutter/material.dart';
import 'package:jurysofttask/core/constant.dart';
import 'package:jurysofttask/presentation/widget/widget.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({
    super.key,
    required this.amount,
  });
  final int amount;

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _razorpay = Razorpay();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        title: textWidget(text: 'Payments', color: kBlack, size: 25),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const AddressWidget(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: textWidget(
                  text: 'Order now',
                  color: kBlack,
                  size: 30,
                  weight: FontWeight.bold),
            ),
            Container(
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
                    textWidget(
                        text: 'Order details :', color: kBlack, size: 20),
                    kHeight5,
                    Row(
                      children: [
                        textWidget(
                            text: '  Total : ',
                            color: kBlack,
                            size: 20,
                            weight: FontWeight.w500),
                        textWidget(
                            text: '₹ ${widget.amount}',
                            color: kRed,
                            size: 20,
                            weight: FontWeight.w500)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: InkWell(
            onTap: () {
              var options = {
                'key': 'rzp_test_810MY3XC6Evtfr',
                'amount': widget.amount * 100,
                'name': 'Arun V G',
                'description': 'Fine T-Shirt',
                'prefill': {
                  'contact': '8888888888',
                  'email': 'test@razorpay.com'
                }
              };
              _razorpay.open(options);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: kyellow),
              child: Center(
                  child: textWidget(
                      text: 'Proceed to pay',
                      color: kBlack,
                      size: 20,
                      weight: FontWeight.w600)),
            ),
          ),
        ),
      ),
    );
  }
}

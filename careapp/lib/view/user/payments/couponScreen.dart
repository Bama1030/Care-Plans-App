import 'package:careapp/utils/global.colors.dart';
import 'package:careapp/view/user/plans/careplanScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CouponPaymentScreen extends StatefulWidget {
  const CouponPaymentScreen({super.key});

  @override
  State<CouponPaymentScreen> createState() => _CouponPaymentScreenState();
}

class _CouponPaymentScreenState extends State<CouponPaymentScreen> {
  String couponCode = '';
  bool couponApplied = false;
  String selectedPaymentOption = '';
  

  void applyCoupon() {
    setState(() {
      couponApplied = true;
    });
  }

  void selectPaymentOption(String) {
    setState(() {
      selectedPaymentOption;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 151, 184, 214),
      appBar: AppBar(
        backgroundColor: GlobalClors.bodyColor,
        title: const Text('Payment',textAlign: TextAlign.center,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  couponCode = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Enter Coupon Code',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.check),
                  onPressed: applyCoupon,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              couponApplied
                  ? 'Coupon Applied: $couponCode'
                  : 'Coupon not applied',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: couponApplied ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Select Payment Option:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 8.0),
            ListTile(
              title: const Text('Credit Card'),
              leading: Radio(
                value: 'Credit Card',
                groupValue: selectedPaymentOption,
                onChanged: selectPaymentOption,
              ),
            ),
            ListTile(
              title: const Text('PayPal'),
              leading: Radio(
                value: 'PayPal',
                groupValue: selectedPaymentOption,
                onChanged: selectPaymentOption,
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: const CarePlanScreen(),
                      type: PageTransitionType.fade,
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 149, 44, 235),
                ),
                child: const Text("Pay Now"),
              ),
            )
            // Add more payment options as needed
          ],
        ),
      ),
    );
  }
}

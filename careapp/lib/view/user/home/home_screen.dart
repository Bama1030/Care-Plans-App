import 'package:careapp/constants/common_functions.dart';
import 'package:careapp/utils/global.colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../../constants/constants.dart';
import '../../../utils/colors.dart';
import '../payments/couponScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: GlobalClors.mainColor,
        appBar: PreferredSize(
          preferredSize: Size(width * 1, height * 0.07),
          child: HomePageAppbar(width: width),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: height * 0.086,
                width: width,
                color: GlobalClors.mainColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Why Babynama?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: AutofillHints.addressState),
                    ),
                    CommonFunctions.blankSpace(height * 0.01, 0),
                    const Text(
                      "Our team of trusted Prediatricians will resolve your queries end-to-end on WhatsApp",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),

              CommonFunctions.blankSpace(height * 0.01, 0),
              
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CarouselSlider(
                  carouselController: CarouselController(),
                  items: carouselPictures.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage('assets/images/$item'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                  ),
                ),
              ),

              // CommonFunctions.divider(),
              CommonFunctions.blankSpace(height * 0.01, 0),
              Container(
                height: height * 0.08,
                width: width,
                color: GlobalClors.mainColor,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Our Care Plans",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: AutofillHints.addressState),
                    ),
                  ],
                ),
              ),

              TabBar(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 0, left: 45, right: 45),
                  unselectedLabelColor: Colors.white60,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 40, 83, 158)),
                  tabs: [
                    Tab(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(color: const Color.fromARGB(255, 40, 83, 158), width: 2)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "1 Month",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(color: const Color.fromARGB(255, 40, 83, 158), width: 2)),
                        child: const Align(
                          alignment: Alignment.center,
                          child:
                              Text("3 Months", style: TextStyle(fontSize: 15)),
                        ),
                      ),
                    )
                  ]),

              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 10, bottom: 10),
                child: SizedBox(
                  height: height * 2.07,
                  width: width,
                  child: Expanded(
                    child: TabBarView(children: [
                      OneMonthPlans(width: width, height: height),
                      ThreeMonthPlan(width: width, height: height),
                    ]),
                  ),
                ),
              ),

              
              CommonFunctions.blankSpace(height * 0.01, width * 0),
              SizedBox(
                height: height * 0.8,
                child: Column(
                  children: [
                    const Text(
                      "What you get with Babynama",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    CommonFunctions.blankSpace(height * 0.01, 0),
                    const Text(
                      "Expert care and guidance for new mothers",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    CommonFunctions.blankSpace(height * 0.02, 0),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: SizedBox(
                        height: height * 0.70,
                        width: width,
                        child: GridView.builder(
                            itemCount: 6,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {},
                                child: Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black38),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),

              CommonFunctions.blankSpace(height * 0.03, width * 0),
            ],
          ),
        ),
      ),
    );
  }
}

class ThreeMonthPlan extends StatelessWidget {
  const ThreeMonthPlan({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: GlobalClors.mainColor, borderRadius: BorderRadius.circular(8)),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(223, 35, 43, 56),
                ),
                height: height * 0.46,
                width: width,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Basic Care",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        CommonFunctions.blankSpace(height * 0.02, 0),
                        const Text(
                          "Reliable pediatric care within 15 minutes.",
                          style: TextStyle(color: Colors.white),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Instant answers on WhatsApp by Pediatricians (8AM-10PM)",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Unlimited free pediatric consultations (8AM-10PM)",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Free postpartum yoga classes",
                              style: TextStyle(color: Colors.white),
                              softWrap: false,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "₹ 2499",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text("10 days Refund Policy",
                                  style: TextStyle(color: Colors.white))
                            ]),
                        const Text(
                          "Per 3 Month",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: const CouponPaymentScreen(),
                                  type: PageTransitionType.rightToLeft,
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 149, 44, 235),
                            ),
                            child: const Text("Get Started"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(223, 35, 43, 56),
                ),
                height: height * 0.67,
                width: width,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Prime Care",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        CommonFunctions.blankSpace(height * 0.02, 0),
                        const Text(
                          "Comprehensive care for your child's health & development.",
                          style: TextStyle(color: Colors.white),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Instant answers on WhatsApp by Pediatricians (8AM-10PM).",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Unlimited free pediatric consultations 24X7",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Monthly milestones tracking by a senior pediatrician.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Comprehensive guidance for lactation, nutrition, weaning.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Free workshops: weaning, postpartum yoga.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "₹ 4999",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text("10 days Refund Policy",
                                  style: TextStyle(color: Colors.white))
                            ]),
                        const Text(
                          "Per 3 Month",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: const CouponPaymentScreen(),
                                  type: PageTransitionType.rightToLeft,
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 149, 44, 235),
                            ),
                            child: const Text("Get Started"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(223, 35, 43, 56),
                ),
                height: height * 0.88,
                width: width,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Holistic Care",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        CommonFunctions.blankSpace(height * 0.02, 0),
                        const Text(
                          "Exceptional Personalized Care for Child and Mother's Well-being.",
                          style: TextStyle(color: Colors.white),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Text(
                                  "Dedicated pediatrician to guide and support you with your child's specific needs",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  softWrap: false,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Private WhatsApp group with your dedicated pediatrician.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Unlimited free pediatric consultations 24X7.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Instant answers on WhatsApp by Pediatricians (8AM-10PM).",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Comprehensive support and guidance for mother: postnatal care, personalized diet plan, emotional well-being and other health concerns.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Free Specialist Consultations for baby & mother: Gynecologist, Dermatologist, Psychologist, Pediatrician, Nutritionist.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Free access to all our workshops: nutrition, weaning, lactation, postpartum yoga.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "₹ 9999",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text("10 days Refund Policy",
                                  style: TextStyle(color: Colors.white))
                            ]),
                        const Text(
                          "Per 3 Month",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: const CouponPaymentScreen(),
                                  type: PageTransitionType.rightToLeft,
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 149, 44, 235),
                            ),
                            child: const Text("Get Started"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OneMonthPlans extends StatelessWidget {
  const OneMonthPlans({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: GlobalClors.mainColor, borderRadius: BorderRadius.circular(8)),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(223, 35, 43, 56),
                ),
                height: height * 0.46,
                width: width,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Basic Care",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        CommonFunctions.blankSpace(height * 0.02, 0),
                        const Text(
                          "Reliable pediatric care within 15 minutes.",
                          style: TextStyle(color: Colors.white),
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Instant answers on WhatsApp by Pediatricians (8AM-10PM)",
                                style: TextStyle(color: Colors.white),
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Unlimited free pediatric consultations (8AM-10PM)",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Free postpartum yoga classes",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Text(
                          "₹ 999",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "Per Month",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: const CouponPaymentScreen(),
                                  type: PageTransitionType.rightToLeft,
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 149, 44, 235),
                            ),
                            child: const Text("Get Started"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(223, 35, 43, 56),
                ),
                height: height * 0.67,
                width: width,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Prime Care",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        CommonFunctions.blankSpace(height * 0.02, 0),
                        const Text(
                          "Comprehensive care for your child's health & development.",
                          style: TextStyle(color: Colors.white),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Instant answers on WhatsApp by Pediatricians (8AM-10PM).",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Unlimited free pediatric consultations 24X7",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Monthly milestones tracking by a senior pediatrician.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Comprehensive guidance for lactation, nutrition, weaning.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Free workshops: weaning, postpartum yoga.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Text(
                          "₹ 1999",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "Per Month",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: const CouponPaymentScreen(),
                                  type: PageTransitionType.rightToLeft,
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 149, 44, 235),
                            ),
                            child: const Text("Get Started"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(223, 35, 43, 56),
                ),
                height: height * 0.88,
                width: width,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Holistic Care",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        CommonFunctions.blankSpace(height * 0.02, 0),
                        const Text(
                          "Exceptional Personalized Care for Child and Mother's Well-being.",
                          style: TextStyle(color: Colors.white),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Dedicated pediatrician to guide and support you with your child's specific needs",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify,
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Private WhatsApp group with your dedicated pediatrician.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Unlimited free pediatric consultations 24X7.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Instant answers on WhatsApp by Pediatricians (8AM-10PM).",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Comprehensive support and guidance for mother: postnatal care, personalized diet plan, emotional well-being and other health concerns.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Free Specialist Consultations for baby & mother: Gynecologist, Dermatologist, Psychologist, Pediatrician, Nutritionist.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.greenAccent,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "Free access to all our workshops: nutrition, weaning, lactation, postpartum yoga.",
                                style: TextStyle(color: Colors.white),
                                softWrap: false,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                        CommonFunctions.blankSpace(height * 0.03, 0),
                        const Text(
                          "₹ 3998",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "Per Month",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  child: const CouponPaymentScreen(),
                                  type: PageTransitionType.rightToLeft,
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 149, 44, 235),
                            ),
                            child: const Text("Get Started"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePageAppbar extends StatelessWidget {
  const HomePageAppbar({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: appBarGradientColor1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset(
              "assets/images/logo1.png",
              width: width * 0.4,
            ),
          ),
        ],
      ),
    );
  }
}

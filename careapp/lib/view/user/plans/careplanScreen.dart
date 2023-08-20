
import 'package:careapp/utils/colors.dart';
import 'package:flutter/material.dart';


class CarePlanScreen extends StatefulWidget {
  const CarePlanScreen({super.key});

  @override
  State<CarePlanScreen> createState() => _CarePlanScreenState();
}

class _CarePlanScreenState extends State<CarePlanScreen> {
  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width*1, height*0.07),
        child: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: appBarGradientColor1)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Image.asset("assets/images/logo1.png",width: width*0.4,),
              ),
            ],
          ),
        ),
        ),
      body: Container(
        color: Colors.white24,
        child: const Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thank You", style: TextStyle(fontSize: 35,color: Colors.blueAccent,fontFamily: AutofillHints.creditCardName),),
            Text("You have Successfully Purchased our Plan", style: TextStyle(fontSize: 15,color: Colors.grey,fontFamily: AutofillHints.creditCardName),)
          ],
        ),
        ),
        
      ),
      
    );
  }
}
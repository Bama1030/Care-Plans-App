
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../constants/common_functions.dart';
import '../user/user_nav_bar/user_buttom_navbar.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(238, 29, 61, 117),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
          Stack(
            alignment: const Alignment(0.0, 1.0),
            children: <Widget>[
              
              Column(
                children: [
                  Image.asset(
                    "assets/images/all_doctors_image.jpeg",
                    height: height * 0.32,
                    width: width * 1.0,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                padding: EdgeInsets.only(left: 0.0, bottom: 0.0, top: 0.0),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Wellcome',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 1.2,
                      color: Color.fromARGB(235, 135, 165, 215),
                    ),
                  ),
                  
                ),
                
              ),
              
                ],
              ),
              
              
            ],
          ),
          CommonFunctions.blankSpace(height * 0.02, 0),
          Container(
            margin: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'User Name',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4073AE)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4073AE)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10, right: 30.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.white60),
                ),
              ),
            ),
          ),
          CommonFunctions.blankSpace(height * 0.02, 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                    child: MaterialButton(
                  color: const Color.fromARGB(243, 8, 45, 75),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(120)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const UserBottomNavBar(),
                        type: PageTransitionType.rightToLeft,
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )),
              )
            ],
          ),
          const SizedBox(height: 40.0),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Color.fromARGB(255, 133, 171, 214),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

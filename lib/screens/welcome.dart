import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'home.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool loading = false;

  void toHomeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => Home(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width * 0.55,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: const Text(
                  'Salary, Tax and Allowances',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/pic.JPG',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.22),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    toHomeScreen();
                    setState(() {
                      loading = !loading;
                    });
                  },
                  elevation: 10,
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: loading == false
                      ? const Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      : const SpinKitWanderingCubes(
                          color: Colors.white,
                          size: 25.0,
                        ),
                ),
              )
              //
            ],
          ),
        ),
      ),
    );
  }
}

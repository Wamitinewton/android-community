import 'package:flutter/material.dart';

class OnBoardingWelcomeScreen extends StatelessWidget {
  const OnBoardingWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/onBoarding.png'),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 250),
                    child: Text(
                      'Make Your',
                      style: TextStyle(
                          color: Colors.grey,
                          
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "HOME BEAUTIFUL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                  const Spacer(flex: 2,),
                  Container(
                    height: 55,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Get started',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                  ),
                  const Spacer(flex: 2,),
                ],
              ),
            ),
          ),
        ));
  }
}

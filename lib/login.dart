import 'package:android_app1/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = '';

  void _emailOnChanged(String val) {
    email = val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          minimum: const EdgeInsets.only(top: 60),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Flexible(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 30,
                        endIndent: 20,
                      ),
                    ),
                    SvgPicture.asset("assets/furniture_vector.svg"),
                    const Flexible(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 30,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 10, top: 30),
                  child: Text(
                    'Hello !',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 30),
                  child: Text(
                    "WELCOME",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Form(
                    key: _formKey,
                    child: Container(
                        // height: 300,
                        // width: 200,
                        margin: const EdgeInsets.only(right: 30),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x408A959E),
                                offset: Offset(0, 7),
                                blurRadius: 30,
                              )
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 35),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                onChanged: _emailOnChanged,
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  labelText: "Email",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 30),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                obscureText: true,
                                enableSuggestions: false,
                                autocorrect: false,
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                  labelText: "password",
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  suffixIconConstraints:
                                      BoxConstraints(maxWidth: 50),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot password',
                                  style: TextStyle(
                                    color:
                                        Color.fromARGB(255, 47, 42, 42),
                                    fontSize: 16,
                                  ),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                margin: const EdgeInsets.symmetric(horizontal: 30),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: const [
                                       BoxShadow(
                                        color: Color(0x5030303030),
                                        offset: Offset(0, 10),
                                        blurRadius: 20,
                                      )
                                    ]),
                                child: const Center(
                                    child: Text(
                                  'Sign In',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextButton(
                                onPressed: () {
                                 Get.to(const RegisterScreen());
                                },
                                child: const Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                )),
                            const SizedBox(
                              height: 21,
                            ),
                          ],
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

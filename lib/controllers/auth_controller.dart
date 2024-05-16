import 'package:android_app1/models/homescreen.dart';
import 'package:android_app1/models/user_credential.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{

  final TextEditingController name = TextEditingController();
  final TextEditingController mail = TextEditingController();
  final TextEditingController pwd = TextEditingController();
  final TextEditingController cfmpwd = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  RxString userName = ''.obs;
  RxBool isLoading = false.obs;
  Rx<User?> user = Rx<User?>(null);

  void setUserName(String value){
    userName.value = value;
  }

  Future<void> signUp(String email, String userName, String password, String confirmPassword) async{
    isLoading.value = true;
    try {
      EasyLoading.show(
        indicator: const CircularProgressIndicator(),
        maskType: EasyLoadingMaskType.clear,
        status: "Authenticating.....",
        dismissOnTap: false,
      );

      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
        name: name.text,
        email: mail.text,
        id: result.user!.uid,
        password: pwd.text
      );
      await _db.collection("Users").doc(result.user!.uid).set(user.toJson());
      isLoading.value = false;

      EasyLoading.addStatusCallback((_) {
        EasyLoading.show(
          indicator: const Icon(Icons.check),
          status: "Authenticated successfully",
          dismissOnTap: true,
        );
       });

       Future.delayed(const Duration(seconds: 3));
       Get.offAll(HomeScreenView());
    } on FirebaseAuthException catch(e){
      EasyLoading.showError(e.message!);
    } catch (e){
      EasyLoading.showError(e.toString());
    }
  }


}
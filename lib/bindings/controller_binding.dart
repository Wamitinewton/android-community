import 'package:android_app1/controllers/auth_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies(){
    Get.put<AuthController>(AuthController());
    
  }
}
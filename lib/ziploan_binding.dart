import 'package:get/get.dart';
import 'package:ziploan/controllers/ziploan_controller.dart';

class ZiploanBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ZipLoanController());
  }

}
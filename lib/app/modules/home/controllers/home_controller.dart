import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxList listBanner = [
    'assets/images/banner1.png',
    'assets/images/top_donatur.png',
    'assets/images/banner1.png',
  ].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

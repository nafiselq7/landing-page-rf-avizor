import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:rf_avizor_landing_page/app/components/header.dart';
import 'package:rf_avizor_landing_page/app/controllers/route_controller_controller.dart';
import 'package:rf_avizor_landing_page/app/modules/utils/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final controllerRoute = Get.find<RouteControllerController>();

    print("ini screenWidth : $screenWidth");

    Widget carousel() {
      return Obx(
        () => Container(
          margin: const EdgeInsets.only(top: 40),
          width: screenWidth,
          child: CarouselSlider(
            options: CarouselOptions(
              height: 350.0,
              autoPlay: true,
            ),
            items: controller.listBanner.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: screenWidth,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Image.asset(
                      i,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      );
    }

    Widget serverOnline() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.online_prediction,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Server Offline",
                      style: primaryTextStyle.copyWith(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Row(
                  children: [
                    Icon(
                      Icons.online_prediction,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Login Offline",
                      style: primaryTextStyle.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              "0",
              style: primaryTextStyle.copyWith(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Total Player",
              style: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1544032189-e504370d63e1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            fit: BoxFit.cover,
            width: screenWidth,
          ),
          Container(
            width: screenWidth,
            color: Colors.black
                .withOpacity(0.5), // Overlay with semi-transparent black
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                HeaderComponent(),
                carousel(),
                serverOnline(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

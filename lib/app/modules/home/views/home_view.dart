import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:rf_avizor_landing_page/app/modules/utils/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    print("ini screenWidth : $screenWidth");

    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: screenWidth,
        height: 80,
        // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/logo.gif",
              height: 100,
              width: 100,
            ),
            const SizedBox(width: 200),
            screenWidth < 1000
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 50,
                    ),
                  )
                : Row(
                    children: [
                      MouseRegion(
                        onEnter: (_) {
                          controller.isHoveredHome.value = true;
                        },
                        onExit: (_) {
                          controller.isHoveredHome.value = false;
                        },
                        child: Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              color: controller.isHoveredHome.value
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Home',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          controller.isHoveredDownload.value = true;
                        },
                        onExit: (_) {
                          controller.isHoveredDownload.value = false;
                        },
                        child: Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              color: controller.isHoveredDownload.value
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Download',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          controller.isHoveredInformation.value = true;
                        },
                        onExit: (_) {
                          controller.isHoveredInformation.value = false;
                        },
                        child: Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              color: controller.isHoveredInformation.value
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: HoverMenu(
                              title: Text(
                                "Information",
                                style: primaryTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              items: [
                                InkWell(
                                  hoverColor: Colors.red,
                                  onTap: () {
                                    print('Item 1 clicked');
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Item 1',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          controller.isHoveredDonation.value = true;
                        },
                        onExit: (_) {
                          controller.isHoveredDonation.value = false;
                        },
                        child: Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              color: controller.isHoveredDonation.value
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Donation',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          controller.isHoveredCommunity.value = true;
                        },
                        onExit: (_) {
                          controller.isHoveredCommunity.value = false;
                        },
                        child: Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              color: controller.isHoveredCommunity.value
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: HoverMenu(
                              title: Text(
                                "Community",
                                style: primaryTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              items: [
                                InkWell(
                                  hoverColor: Colors.red,
                                  onTap: () {
                                    print('Item 1 clicked');
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Facebook',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  hoverColor: Colors.red,
                                  onTap: () {
                                    print('Item 1 clicked');
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Discord',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          controller.isHoveredGameCp.value = true;
                        },
                        onExit: (_) {
                          controller.isHoveredGameCp.value = false;
                        },
                        child: Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              color: controller.isHoveredGameCp.value
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: HoverMenu(
                              title: Text(
                                "Game CP",
                                style: primaryTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              items: [
                                InkWell(
                                  hoverColor: Colors.red,
                                  onTap: () {
                                    print('Item 1 clicked');
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Login',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  hoverColor: Colors.red,
                                  onTap: () {
                                    print('Item 1 clicked');
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Register',
                                      style: primaryTextStyle.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
          ],
        ),
      );
    }

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
                header(),
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

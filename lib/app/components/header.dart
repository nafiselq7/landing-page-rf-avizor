import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:rf_avizor_landing_page/app/controllers/route_controller_controller.dart';
import 'package:rf_avizor_landing_page/app/routes/app_pages.dart';

import '../modules/utils/theme.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;
    final controllerRoute = Get.find<RouteControllerController>();
    
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
                        controllerRoute.isHoveredHome.value = true;
                      },
                      onExit: (_) {
                        controllerRoute.isHoveredHome.value = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                            color: controllerRoute.isHoveredHome.value
                                ? Colors.red
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Get.offNamed(Routes.HOME);
                            },
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
                        controllerRoute.isHoveredDownload.value = true;
                      },
                      onExit: (_) {
                        controllerRoute.isHoveredDownload.value = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                            color: controllerRoute.isHoveredDownload.value
                                ? Colors.red
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Get.offNamed(Routes.DOWNLOAD);
                            },
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
                        controllerRoute.isHoveredInformation.value = true;
                      },
                      onExit: (_) {
                        controllerRoute.isHoveredInformation.value = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                            color: controllerRoute.isHoveredInformation.value
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
                        controllerRoute.isHoveredDonation.value = true;
                      },
                      onExit: (_) {
                        controllerRoute.isHoveredDonation.value = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                            color: controllerRoute.isHoveredDonation.value
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
                        controllerRoute.isHoveredCommunity.value = true;
                      },
                      onExit: (_) {
                        controllerRoute.isHoveredCommunity.value = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                            color: controllerRoute.isHoveredCommunity.value
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
                        controllerRoute.isHoveredGameCp.value = true;
                      },
                      onExit: (_) {
                        controllerRoute.isHoveredGameCp.value = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                            color: controllerRoute.isHoveredGameCp.value
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
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rf_avizor_landing_page/app/modules/utils/theme.dart';

import '../../../components/header.dart';
import '../controllers/download_controller.dart';

class DownloadView extends GetView<DownloadController> {
  const DownloadView({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 150),
        padding: const EdgeInsets.symmetric(horizontal: 40),
        width: screenWidth,
        child: Card(
          color: Colors.grey.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Download Full Client",
                  style: primaryTextStyle.copyWith(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                Table(
                  border: TableBorder.all(color: Colors.red),
                  columnWidths: const {
                    0: FixedColumnWidth(200),
                    1: FlexColumnWidth(),
                    2: FixedColumnWidth(100),
                    3: FixedColumnWidth(200)
                  },
                  children: [
                    TableRow(
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Last Update',
                              style: TextStyle(color: Colors.white)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Description',
                              style: TextStyle(color: Colors.white)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Size',
                              style: TextStyle(color: Colors.white)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Link',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '02 Februari 2025',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('RF AVIZOR FULL CLIENT',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '2.5GB',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  "Mega",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '02 Februari 2025',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('RF AVIZOR FULL CLIENT',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '2.5GB',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  "Mediafire",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '02 Februari 2025',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('RF AVIZOR FULL CLIENT',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '2.5GB',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  "Google Drive",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
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
              ],
            ),
          ),
          content(),
        ],
      ),
    );
  }
}

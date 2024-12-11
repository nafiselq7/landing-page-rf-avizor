import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rf_avizor_landing_page/app/components/header.dart';
import 'package:rf_avizor_landing_page/app/modules/utils/theme.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
                const HeaderComponent(),
                const SizedBox(height: 15),
                Center(
                  child: Text(
                    "PAGE NOT FOUND",
                    style: primaryTextStyle.copyWith(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

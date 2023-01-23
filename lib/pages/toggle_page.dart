import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';
import 'package:petient_hub/widgets/buttons/left_icon.dart';
import 'package:petient_hub/widgets/buttons/right_icon.dart';
import 'package:petient_hub/widgets/curve_clipper.dart';

class ToglePage extends StatelessWidget {
  static String routName = '/';
  const ToglePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    AppController controller = Get.put(AppController());

    return Scaffold(
      body: PageView.builder(
        controller: controller.pageController,
        itemCount: controller.tabs.length,
        itemBuilder: (context, index) {
          return controller.tabs[index];
        },
      ),
      bottomSheet: ClipPath(
        clipper: BottomCurveClipper(),
        child: Container(
          alignment: Alignment.center,
          height:
              Platform.isIOS ? size.height / 4 * 0.6 : size.height / 4 * 0.5,
          color: AppColors.lightGray,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              LeftIcon(),
              SizedBox(width: 16),
              RightIcon(),
            ],
          ),
        ),
      ),
    );
  }
}

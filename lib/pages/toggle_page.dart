import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/dimensions.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';
import 'package:petient_hub/widgets/iconbuttons/left_icon.dart';
import 'package:petient_hub/widgets/iconbuttons/right_icon.dart';
import 'package:petient_hub/widgets/curve_clipper.dart';

class ToglePage extends StatelessWidget {
  static String routName = '/';
  const ToglePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Dimensions.init(context);
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
          height: Dimensions.bottomSheetHeight,
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

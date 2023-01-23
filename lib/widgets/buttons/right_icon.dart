import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';

class RightIcon extends StatelessWidget {
  const RightIcon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<AppController>(
      builder: (controller) => GestureDetector(
        onTap: () {
          controller.onSecondButtonTapped();
        },
        child: Container(
          height: size.height / 6 * 0.4,
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
          ),
          decoration: BoxDecoration(
              color: controller.isFirstButtonSelected
                  ? AppColors.lightGray
                  : AppColors.appBarColor,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(controller.isFirstButtonSelected
                  ? Assets.calendarUnFocus
                  : Assets.calendarOnFocus),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Randevularım',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: controller.isFirstButtonSelected
                      ? AppColors.appBarColor
                      : AppColors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

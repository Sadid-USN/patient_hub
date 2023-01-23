import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';

class LeftIcon extends StatelessWidget {
  const LeftIcon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<AppController>(
      builder: (controller) => GestureDetector(
        onTap: () {
          controller.onFirstButtonTapped();
        },
        child: Container(
          margin: const EdgeInsets.only(top: 8),
          height: size.height / 6 * 0.4,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: controller.isFirstButtonSelected
                ? AppColors.appBarColor
                : AppColors.lightGray,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                controller.isFirstButtonSelected
                    ? Assets.homeOnFocus
                    : Assets.homeUnFocus,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Ana Sayfa',
                style: TextStyle(
                  color: controller.isFirstButtonSelected
                      ? AppColors.white
                      : AppColors.appBarColor,
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

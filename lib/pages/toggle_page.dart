import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/constant/dimensions.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/home_page_controller.dart';
import 'package:petient_hub/widgets/curve_clipper.dart';

class ToglePage extends StatelessWidget {
  static String routName = '/';
  const ToglePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Dimensions.init(context);
    HomePageController controller = Get.put(HomePageController());
    return DefaultTabController(
      length: controller.tabs.length,
      child: Scaffold(
        body: TabBarView(
          children: controller.tabs,
        ),
        bottomSheet: ClipPath(
          clipper: BottomCurveClipper(),
          child: Container(
            alignment: Alignment.center,
            height: Dimensions.bottomSheetHeight,
            color: AppColors.lightGray,
            child: TabBar(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                indicatorColor: AppColors.lightGray,
                tabs: [
                  GetBuilder<HomePageController>(
                    builder: (controller) {
                      return Container(
                        height: Dimensions.homeIconHeight,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.appBarColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(Assets.homeOnFocus),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Ana Sayfa',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  GetBuilder<HomePageController>(
                    builder: (controller) {
                      return Container(
                        height: Dimensions.homeIconHeight,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: controller.selectedIndex == 0
                                ? AppColors.lightGray
                                : AppColors.appBarColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              controller.selectedIndex == 0
                                  ? Assets.calendarUnFocus
                                  : Assets.calendarOnFocus,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Randevularım',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: controller.selectedIndex == 0
                                    ? AppColors.appBarColor
                                    : Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

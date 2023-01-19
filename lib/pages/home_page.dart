import 'package:flutter/material.dart';
import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/widgets/logo_header.dart';

class HomePage extends StatelessWidget {
  static String routName = '/homePage';
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // HomePageController controller = Get.put(HomePageController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const LogogHeader(),
              ...List.generate(
                pngImages.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(pngImages[index]),
                ),
              ),
              // ClipPath(
              //   clipper: BottomCurveClipper(),
              //   child: Container(
              //     height: Dimensions.bottomSheetHeight,
              //     color: AppColors.lightGray,
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             GestureDetector(
              //               onTap: () {},
              //               child: Container(
              //                 padding: const EdgeInsets.all(12),
              //                 decoration: BoxDecoration(
              //                   color: AppColors.primaryColor,
              //                   borderRadius: BorderRadius.circular(10),
              //                 ),
              //                 child: Column(
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceEvenly,
              //                   children: [
              //                     Image.asset(Assets.homeOnFocus),
              //                     const SizedBox(
              //                       height: 10,
              //                     ),
              //                     Text(
              //                       'Ana Sayfa',
              //                       style: TextStyle(
              //                         color: controller.selectedIndex == 0
              //                             ? Colors.white
              //                             : AppColors.primaryColor,
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.w500,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //             const SizedBox(
              //               width: 16,
              //             ),
              //             GestureDetector(
              //               onTap: () {},
              //               child: Container(
              //                 padding: const EdgeInsets.all(12),
              //                 decoration: BoxDecoration(
              //                     color: controller.selectedIndex == 0
              //                         ? AppColors.lightGray
              //                         : AppColors.primaryColor,
              //                     borderRadius: BorderRadius.circular(10)),
              //                 child: Column(
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceEvenly,
              //                   children: [
              //                     Image.asset(Assets.calendarUnFocus),
              //                     const SizedBox(
              //                       height: 10,
              //                     ),
              //                     Text(
              //                       'Randevularım',
              //                       textAlign: TextAlign.center,
              //                       style: TextStyle(
              //                         color: controller.selectedIndex == 0
              //                             ? AppColors.primaryColor
              //                             : Colors.white,
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.w500,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/theme/color_extention.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';
import 'package:petient_hub/data/local_list_items.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    var doctorsInfo = controller.doctorsData;
    return SizedBox(
      height: MediaQuery.of(context).size.width / 2 * 0.6,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(
            top: 30,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width / 2 * 0.6,
              margin: const EdgeInsets.only(left: 6),
              decoration: BoxDecoration(
                color: doctorsInfo[index].color!.toColor(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Image.asset(
                    icons[index],
                    color: doctorsInfo[index].color!.toColor(1.0),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    midletitle[index],
                    style: headline5.copyWith(
                      fontSize: 10,
                      color: doctorsInfo[index].color!.toColor(1.0),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    bottomtitle[index],
                    style: headline5.copyWith(
                      fontSize: 12,
                      color: doctorsInfo[index].color!.toColor(1.0),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            );
          }),
    );
  }
}

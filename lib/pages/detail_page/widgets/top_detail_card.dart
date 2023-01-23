import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/theme/color_extention.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';
import 'package:petient_hub/data/local_list_items.dart';

class TopDetailCard extends StatelessWidget {
  const TopDetailCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AppController controller = Get.put(AppController());
    var doctorsInfo = controller.doctorsData;
    return SizedBox(
      height: size.height / 4 * 0.7,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(
            top: 30,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height / 3 * 0.3,
                    padding: const EdgeInsets.all(2),
                    width: MediaQuery.of(context).size.width / 4 * 1,
                    decoration: BoxDecoration(
                      color: doctorsInfo[index].color!.toColor(0.1),
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
                  ),
                ),
              ],
            );
          }),
    );
  }
}

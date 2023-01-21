import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';
import 'package:petient_hub/pages/detail_page/detail_page.dart';
import 'package:petient_hub/widgets/custom_appbar.dart';
import 'package:petient_hub/widgets/main_card.dart';

class MyAppointments extends StatelessWidget {
  static String routName = '/myAppointments';
  const MyAppointments({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.0,
        flexibleSpace: CustomAbbBar(
          onTap: () {},
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: controller.doctorInfo(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('Something went wrong'),
            );
          }
          if (snapshot.hasData) {
            return const Center(
              child: Text('No data'),
            );
          }
          var doctorsInfo = controller.doctorsData;
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2 * 1.4,
                  child: Scrollbar(
                    radius: const Radius.circular(90),
                    controller: controller.scrollController,
                    thumbVisibility: true,
                    thickness: 8,
                    child: ListView.builder(
                        controller: controller.scrollController,
                        padding: const EdgeInsets.only(
                          top: 30,
                          right: 16,
                          left: 16,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: doctorsInfo.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(DetailPage.routName, arguments: {
                                'doctorsInfo': doctorsInfo,
                              });
                            },
                            child: MainCard(
                              index: index,
                              photo: doctorsInfo[index].photo ?? '',
                              color: doctorsInfo[index].color ?? '',
                              name: doctorsInfo[index].doctor ?? '',
                              profession: doctorsInfo[index].treatment ?? '',
                              treatment: 'Tedavi',
                              date: doctorsInfo[index].datetime ?? '',
                              datetime: doctorsInfo[index].datetime ?? '',
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

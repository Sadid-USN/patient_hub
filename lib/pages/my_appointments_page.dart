import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';
import 'package:petient_hub/pages/detail_page.dart';
import 'package:petient_hub/widgets/app_bar.dart';
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
        flexibleSpace: AbbBarCustom(
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
          return Column(
            children: [
              SizedBox(
                height: 700,
                child: ListView.builder(
                    shrinkWrap: true,
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
                            'photo': 'some_photo',
                            'color': 'some_color',
                            'name': 'some_name',
                            'detail': 'some_detail',
                          });
                        },
                        child: MainCard(
                          photo: doctorsInfo[index].photo.toString(),
                          color: doctorsInfo[index].color.toString(),
                          name: doctorsInfo[index].doctor!,
                          profession: doctorsInfo[index].treatment!,
                          treatment: 'Tedavi',
                          date: controller.getDateFromString(
                              doctorsInfo[index].datetime ?? '', 0),
                          datetime: controller
                              .getDateFromString(
                                  doctorsInfo[index].datetime ?? '', 1)
                              .substring(0, 5),
                        ),
                      );
                    }),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';
import 'package:petient_hub/widgets/buttons/ratingbar.dart';
import 'package:petient_hub/widgets/custom_appbar.dart';
import 'package:petient_hub/widgets/detail_card.dart';
import 'package:petient_hub/widgets/buttons/dropdown_button.dart';
import 'package:petient_hub/widgets/detail_widget.dart';

class DetailPage extends StatelessWidget {
  static String routName = '/detailPage';

  const DetailPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    var doctorsInfo = controller.doctorsData;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        elevation: 0.0,
        flexibleSpace: CustomAbbBar(
          isIcon: true,
          onTap: () {},
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              const DetailCard(),
              const SizedBox(height: 30),
              const DetailItemsWidget(),
              const DropDownButton(),
              const SizedBox(height: 10),
              const RatingBarStars(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  doctorsInfo[6].feedback_comment ?? '',
                  style: headline2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

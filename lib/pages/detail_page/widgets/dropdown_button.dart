import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/controllers/app_controller.dart';

class DropDownButton extends StatelessWidget {
  const DropDownButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.dropDownColor,
      ),
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          DropdownButtonFormField(
            icon: const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.arrow_drop_down),
            ),
            value: controller.selectedValue,
            items: controller.dropdownItems,
            onChanged: (value) {
              controller.updateSelectedValue(value);
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder:
                  const UnderlineInputBorder(borderSide: BorderSide.none),
              prefixIcon: Image.asset(
                Assets.bell,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

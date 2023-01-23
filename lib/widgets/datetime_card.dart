import 'package:flutter/material.dart';

import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/constant/theme/colors.dart';

class DatetimeCard extends StatelessWidget {
  final String date;
  final String time;
  const DatetimeCard({
    Key? key,
    required this.date,
    required this.time,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          height: size.height * 0.06,
          width: size.width / 2 * 0.9,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.lightGray,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(14),
            color: AppColors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.calendarUnFocus,
                color: AppColors.black,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                date,
                style: headline2.copyWith(
                  color: AppColors.blackDate,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          height: size.height * 0.06,
          width: size.width * 0.4,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.lightGray,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(14),
            color: AppColors.white,
          ),
          child: Row(
            children: [
              const Spacer(),
              Image.asset(
                Assets.clock,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                time,
                style: headline2.copyWith(
                  color: AppColors.blackDate,
                ),
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

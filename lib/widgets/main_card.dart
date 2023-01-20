import 'package:flutter/material.dart';

import 'package:petient_hub/constant/dimensions.dart';
import 'package:petient_hub/constant/theme/color_extention.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/widgets/date_and_time_card.dart';

class MainCard extends StatelessWidget {
  final String name;
  final String treatment;
  final String profession;
  final String date;
  final String datetime;
  final String photo;
  final String color;

  const MainCard({
    Key? key,
    required this.name,
    required this.profession,
    required this.treatment,
    required this.date,
    required this.datetime,
    required this.photo,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightGray,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(
          20,
        ),
        color: color.toColor(),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      height: Dimensions.heightMainCard,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            height: Dimensions.heightSecondCard,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.lightGray, width: 1.5),
              borderRadius: BorderRadius.circular(14),
              color: AppColors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(photo),
                  radius: 25,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        "Dr. $name",
                        maxLines: 2,
                        style: headline2,
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      Text(
                        treatment,
                        maxLines: 1,
                        style: headline3,
                      ),
                      Text(
                        profession,
                        maxLines: 1,
                        style: headline2,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Container(
                  height: 23,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.lightGray,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SizedBox(
                          height: 6,
                          width: 6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: const ColoredBox(
                              color: AppColors.statusColor,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Operasyon',
                        style: headline4,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          DateAndTimeCard(
            date: date,
            time: datetime,
          ),
        ],
      ),
    );
  }
}

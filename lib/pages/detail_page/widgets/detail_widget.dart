import 'package:flutter/material.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/data/local_list_items.dart';

class DetailItemsWidget extends StatelessWidget {
  const DetailItemsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Divider(
            color: AppColors.gray,
            thickness: 2,
          ),
        );
      },
      scrollDirection: Axis.vertical,
      itemCount: detailInfo.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(left: 25, right: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Image.asset(
                  detailInfo[index],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                details[index],
                style: headline3,
              ),
              const Spacer(),
              Text(
                details2[index],
                textAlign: TextAlign.start,
                style: headline3,
              ),
            ],
          ),
        );
      },
    );
  }
}

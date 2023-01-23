import 'package:flutter/material.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/data/local_list_items.dart';

class DetailItemsWidget extends StatelessWidget {
  const DetailItemsWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 3 * 0.4,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: AppColors.gray,
              thickness: 2,
            ),
          );
        },
        scrollDirection: Axis.vertical,
        itemCount: detailIcons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        detailIcons[index],
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
                    SizedBox(
                      width: size.width / 2 * 0.5,
                      child: Text(
                        details2[index],
                        style: headline3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

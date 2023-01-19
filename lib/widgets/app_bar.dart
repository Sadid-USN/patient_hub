import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/constant/dimensions.dart';
import 'package:petient_hub/constant/theme/colors.dart';

class AbbBarCustom extends StatelessWidget {
  final void Function()? onTap;
  const AbbBarCustom({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.appBarSecondary,
      child: Stack(
        children: [
          SvgPicture.asset(
            Assets.banner,
            height: Dimensions.appBarHeight,
          ),
          Positioned(
            top: 50,
            left: 30,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(Dimensions.iconPlus)),
                  padding: const EdgeInsets.all(5),
                  height: 35,
                  width: 35,
                  child: GestureDetector(
                    onTap: onTap,
                    child: SvgPicture.asset(
                      Assets.iconPlus,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  'Randevularım',
                  style: headline1,
                ),
                const SizedBox(
                  width: 150,
                ),
                SvgPicture.asset(Assets.playIcon),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
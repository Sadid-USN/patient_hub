import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/widgets/curve_clipper.dart';

class CustomAbbBar extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  const CustomAbbBar({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            ClipPath(
              clipper: AppBarClipper(),
              child: Container(
                height: size.height,
                color: AppColors.appBarSecondary,
                child: Padding(
                  padding: Platform.isIOS
                      ? const EdgeInsets.only(top: 40, left: 20)
                      : const EdgeInsets.only(top: 25, left: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: const EdgeInsets.all(5),
                        height: 32,
                        width: 32,
                        child: GestureDetector(
                          onTap: onTap,
                          child: SvgPicture.asset(
                            Assets.iconPlusSvg,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        title,
                        style: headline1,
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/constant/dimensions.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/widgets/curve_clipper.dart';

class CustomAbbBar extends StatelessWidget {
  final void Function()? onTap;
  const CustomAbbBar({
    Key? key,
    required this.onTap,
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
                height: 100,
                color: AppColors.appBarSecondary,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 16),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius:
                                BorderRadius.circular(Dimensions.iconPlus)),
                        padding: const EdgeInsets.all(5),
                        height: 35,
                        width: 35,
                        child: GestureDetector(
                          onTap: onTap,
                          child: SvgPicture.asset(
                            Assets.iconPlusSvg,
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

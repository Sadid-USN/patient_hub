import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petient_hub/constant/assets.dart';
import 'package:petient_hub/widgets/curve_clipper.dart';

class LogogHeader extends StatelessWidget {
  const LogogHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            ClipPath(
              clipper: CurveClipper(),
              child: SvgPicture.asset(
                Assets.mainSvg,
              ),
            ),
          ],
        ),
        Positioned(
          right: 0,
          left: 0,
          child: SvgPicture.asset(
            Assets.svglogo,
            height: 77,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/widgets/app_bar.dart';

class DetailPage extends StatelessWidget {
  static String routName = '/detailPage';
  const DetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        elevation: 0.0,
        flexibleSpace: AbbBarCustom(
          isIcon: true,
          onTap: () {},
        ),
        centerTitle: true,
      ),
      body: Row(
        children: const [],
      ),
    );
  }
}

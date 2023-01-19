import 'package:flutter/material.dart';
import 'package:petient_hub/constant/theme/colors.dart';
import 'package:petient_hub/widgets/app_bar.dart';

class MyAppointments extends StatelessWidget {
  static String routName = '/myAppointments';
  const MyAppointments({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0.0,
        flexibleSpace: AbbBarCustom(
          onTap: () {},
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: ListView.builder(
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    color: Colors.red,
                    height: 170,
                    width: 330,
                  );
                }),
          )
        ],
      ),
    );
  }
}

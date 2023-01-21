import 'package:flutter/material.dart';
import 'package:petient_hub/data/local_list_items.dart';
import 'package:petient_hub/widgets/logo_widget.dart';

class HomePage extends StatelessWidget {
  static String routName = '/homePage';
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // HomePageController controller = Get.put(HomePageController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const LogoWidget(),
              ...List.generate(
                pngImages.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    pngImages[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

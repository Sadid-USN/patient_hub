import 'package:flutter/material.dart';
import 'package:petient_hub/data/local_list_items.dart';
import 'package:petient_hub/widgets/logo_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const LogoWidget(),
              ...List.generate(
                pngImages.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(pngImages[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

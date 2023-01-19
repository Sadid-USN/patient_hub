import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/constant/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: routes,
      debugShowCheckedModeBanner: false,
      title: 'Patient hub',
      theme: ThemeData(),
    );
  }
}

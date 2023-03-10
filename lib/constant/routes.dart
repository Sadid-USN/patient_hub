import 'package:get/get.dart';
import 'package:petient_hub/pages/detail_page/detail_page.dart';
import 'package:petient_hub/pages/home_page.dart';
import 'package:petient_hub/pages/my_appointments_page.dart';

import '../pages/toggle_page.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: '/', page: () => const LanguagePage(), middlewares: [
  //   MyMiddleware(),
  // ]),
  GetPage(
    name: '/',
    page: () => const ToglePage(),
  ),
  GetPage(
    name: HomePage.routName,
    page: () => const HomePage(),
  ),
  GetPage(
    name: MyAppointmentsPage.routName,
    page: () => const MyAppointmentsPage(),
  ),
  GetPage(
    name: DetailPage.routName,
    page: () => const DetailPage(),
  ),
];

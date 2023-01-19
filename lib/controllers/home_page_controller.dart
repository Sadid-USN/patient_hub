import 'package:get/get.dart';
import 'package:petient_hub/pages/home_page.dart';
import 'package:petient_hub/pages/my_appointments_page.dart';

class HomePageController extends GetxController {
  int selectedIndex = 0;

  final tabs = [
    const HomePage(),
    const MyAppointments(),
  ];
}

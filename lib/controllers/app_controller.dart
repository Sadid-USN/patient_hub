import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petient_hub/models/doctor_info_model.dart';
import 'package:petient_hub/pages/home_page.dart';
import 'package:petient_hub/pages/my_appointments_page.dart';
import 'package:petient_hub/services/services.dart';

class AppController extends GetxController {
  final Services _services = Services();
  bool isLoading = false;
  List<DoctorInfoModel> _doctorsData = [];
  List<DoctorInfoModel> get doctorsData => _doctorsData;

  bool isFirstButtonSelected = true;
  RxString selectedValue = "Geri Bildirim 1".obs;
  void updateSelectedValue(value) => selectedValue = value;

  final List<DropdownMenuItem<RxString>> dropdownItems = [
    DropdownMenuItem(
        value: "Geri Bildirim 1".obs, child: const Text("Geri Bildirim 1")),
    DropdownMenuItem(
        value: "Geri Bildirim 2".obs, child: const Text("Geri Bildirim 2")),
    DropdownMenuItem(
        value: "Geri Bildirim 3".obs, child: const Text("Geri Bildirim 3")),
  ];

  void onFirstButtonTapped() {
    isFirstButtonSelected = true;
    update();
    previousPage();
  }

  void onSecondButtonTapped() {
    isFirstButtonSelected = false;
    update();
    nextPage();
  }

  Future<void> doctorInfo() async {
    isLoading = true;

    final response = await _services.getDoctors();

    _doctorsData = response;
    isLoading = false;
    update();
  }

  @override
  void onInit() {
    doctorInfo();
    super.onInit();
  }

  int selectedIndex = 0;
  void nextPage() {
    if (selectedIndex < tabs.length - 1) {
      selectedIndex++;
      update();
      pageController.animateToPage(selectedIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    } else {
      const MyAppointments();
    }
  }

  void previousPage() {
    if (selectedIndex > 0) {
      selectedIndex--;
      update();
      pageController.animateToPage(selectedIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  String getDateFromString(String dateTimeString, int index) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    String date = dateTime.toString().split(" ")[index];
    return date;
  }

  late TabController tabController;
  PageController pageController = PageController();
  final tabs = [
    const HomePage(),
    const MyAppointments(),
  ];

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:petient_hub/models/doctor_info_model.dart';

class Services {
  Future<List<DoctorInfoModel>> getDoctors() async {
    const url = 'https://63b7ea0d4d97e82aa3c91a75.mockapi.io/appointments';

    final uri = Uri.parse(url);
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);

        return (json as List).map((e) => DoctorInfoModel.fromJson(e)).toList();
      }
    } catch (e) {
      print(e);
    }
    return [];
  }
}

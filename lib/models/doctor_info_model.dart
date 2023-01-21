import 'package:json_annotation/json_annotation.dart';
part 'doctor_info_model.g.dart';

@JsonSerializable()
class DoctorInfoModel {
  String? doctor;
  String? photo;
  String? treatment;
  String? datetime;
  String? type;
  String? color;
  String? feedback_stars;
  String? feedback_comment;
  String? id;

  DoctorInfoModel(
      {this.doctor,
      this.photo,
      this.treatment,
      this.datetime,
      this.type,
      this.color,
      this.feedback_stars,
      this.feedback_comment,
      this.id});

  factory DoctorInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorInfoModelToJson(this);
}

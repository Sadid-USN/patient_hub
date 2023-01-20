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
  String? feedbackStars;
  String? feedbackComment;
  String? id;

  DoctorInfoModel(
      {this.doctor,
      this.photo,
      this.treatment,
      this.datetime,
      this.type,
      this.color,
      this.feedbackStars,
      this.feedbackComment,
      this.id});

  factory DoctorInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$DoctorInfoModelToJson(this);
}

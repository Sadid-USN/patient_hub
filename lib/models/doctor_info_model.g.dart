// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorInfoModel _$DoctorInfoModelFromJson(Map<String, dynamic> json) =>
    DoctorInfoModel(
      doctor: json['doctor'] as String?,
      photo: json['photo'] as String?,
      treatment: json['treatment'] as String?,
      datetime: json['datetime'] as String?,
      type: json['type'] as String?,
      color: json['color'] as String?,
      feedback_stars: json['feedback_stars'] as String?,
      feedback_comment: json['feedback_comment'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$DoctorInfoModelToJson(DoctorInfoModel instance) =>
    <String, dynamic>{
      'doctor': instance.doctor,
      'photo': instance.photo,
      'treatment': instance.treatment,
      'datetime': instance.datetime,
      'type': instance.type,
      'color': instance.color,
      'feedback_stars': instance.feedback_stars,
      'feedback_comment': instance.feedback_comment,
      'id': instance.id,
    };

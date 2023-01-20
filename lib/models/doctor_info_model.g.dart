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
      feedbackStars: json['feedbackStars'] as String?,
      feedbackComment: json['feedbackComment'] as String?,
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
      'feedbackStars': instance.feedbackStars,
      'feedbackComment': instance.feedbackComment,
      'id': instance.id,
    };

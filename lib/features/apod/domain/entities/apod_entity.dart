import 'package:freezed_annotation/freezed_annotation.dart';

part 'apod_entity.freezed.dart';

@freezed
class ApodEntity with _$ApodEntity {
  const factory ApodEntity({
    required String title,
    required String media_type,
    required String date,
    required String explanation,
    required String? url,
    required String? hdurl,
  }) = _ApodEntity;
}

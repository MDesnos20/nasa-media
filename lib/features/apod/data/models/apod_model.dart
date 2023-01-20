import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/apod_entity.dart';

part 'apod_model.freezed.dart';
part 'apod_model.g.dart';

@freezed
class ApodModel with _$ApodModel {
  @HiveType(typeId: 0)
  const factory ApodModel({
    @HiveField(0) @JsonKey(name: 'title') required String title,
    @HiveField(1) @JsonKey(name: 'media_type') required String media_type,
    @HiveField(2) @JsonKey(name: 'date') required String date,
    @HiveField(3) @JsonKey(name: 'explanation') required String explanation,
    @HiveField(4) @JsonKey(name: 'url') required String url,
    @HiveField(5) @JsonKey(name: 'hdurl', nullable: true) required dynamic hdurl,
  }) = _ApodModel;

  factory ApodModel.fromJson(dynamic json) => _$ApodModelFromJson(json);

  factory ApodModel.fromDomain(ApodEntity entity) {
    return ApodModel(
      title: entity.title,
      media_type: entity.media_type,
      date: entity.date,
      explanation: entity.explanation,
      url: entity.url,
      hdurl: entity.hdurl,
    );
  }
}

List<ApodEntity>getApodMediaList(dynamic json) {
  late final List<ApodEntity> apodMediaList = <ApodEntity>[];
  json.forEach((dynamic element) {
    apodMediaList.add(_$ApodModelFromJson(element).toDomain());
  });
  apodMediaList..removeWhere((element) => element.media_type != 'image');
  return apodMediaList;
}

extension ApodModelX on ApodModel {
  ApodEntity toDomain() {
    return ApodEntity(
      title: title,
      media_type: media_type,
      date: date,
      explanation: explanation,
      url: url,
      hdurl: hdurl,
    );
  }
}

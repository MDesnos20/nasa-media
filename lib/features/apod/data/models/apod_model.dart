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
    @HiveField(1) @JsonKey(name: 'mediaType') required String? mediaType,
    @HiveField(2) @JsonKey(name: 'date') required String date,
    @HiveField(3) @JsonKey(name: 'explanation') required String explanation,
    @HiveField(4) @JsonKey(name: 'url', nullable: true) required String? url,
    @HiveField(5) @JsonKey(name: 'hdurl', nullable: true) required String? hdurl,
  }) = _ApodModel;

  factory ApodModel.fromJson(dynamic json) => _$ApodModelFromJson(json);

  factory ApodModel.fromDomain(ApodEntity entity) {
    return ApodModel(
      title: entity.title,
      mediaType: entity.mediaType,
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
  apodMediaList.removeWhere((element) => element.mediaType != 'image');
  return apodMediaList;
}

extension ApodModelX on ApodModel {
  ApodEntity toDomain() {
    return ApodEntity(
      title: title,
      mediaType: mediaType,
      date: date,
      explanation: explanation,
      url: url,
      hdurl: hdurl,
    );
  }
}

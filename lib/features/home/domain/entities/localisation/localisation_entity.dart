import 'package:freezed_annotation/freezed_annotation.dart';

part 'localisation_entity.freezed.dart';

@freezed 
class LocalisationEntity with _$LocalisationEntity {
  const factory LocalisationEntity({
    required double latitude,
    required double longitude,
  }) = _LocalisationEntity;
}

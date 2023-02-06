// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ApodModelAdapter extends TypeAdapter<_$_ApodModel> {
  @override
  final int typeId = 0;

  @override
  _$_ApodModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ApodModel(
      title: fields[0] as String,
      mediaType: fields[1] as String?,
      date: fields[2] as String,
      explanation: fields[3] as String,
      url: fields[4] as String?,
      hdurl: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ApodModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.mediaType)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.explanation)
      ..writeByte(4)
      ..write(obj.url)
      ..writeByte(5)
      ..write(obj.hdurl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApodModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApodModel _$$_ApodModelFromJson(Map<String, dynamic> json) => _$_ApodModel(
      title: json['title'] as String,
      mediaType: json['media_type'] as String?,
      date: json['date'] as String,
      explanation: json['explanation'] as String,
      url: json['url'] as String?,
      hdurl: json['hdurl'] as String?,
    );

Map<String, dynamic> _$$_ApodModelToJson(_$_ApodModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'media_type': instance.mediaType,
      'date': instance.date,
      'explanation': instance.explanation,
      'url': instance.url,
      'hdurl': instance.hdurl,
    };

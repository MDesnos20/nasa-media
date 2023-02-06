// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'apod_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApodModel _$ApodModelFromJson(Map<String, dynamic> json) {
  return _ApodModel.fromJson(json);
}

/// @nodoc
mixin _$ApodModel {
  @HiveField(0)
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'media_type')
  String? get mediaType => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'explanation')
  String get explanation => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'url', nullable: true)
  String? get url => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'hdurl', nullable: true)
  String? get hdurl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApodModelCopyWith<ApodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApodModelCopyWith<$Res> {
  factory $ApodModelCopyWith(ApodModel value, $Res Function(ApodModel) then) =
      _$ApodModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: 'title') String title,
      @HiveField(1) @JsonKey(name: 'media_type') String? mediaType,
      @HiveField(2) @JsonKey(name: 'date') String date,
      @HiveField(3) @JsonKey(name: 'explanation') String explanation,
      @HiveField(4) @JsonKey(name: 'url', nullable: true) String? url,
      @HiveField(5) @JsonKey(name: 'hdurl', nullable: true) String? hdurl});
}

/// @nodoc
class _$ApodModelCopyWithImpl<$Res> implements $ApodModelCopyWith<$Res> {
  _$ApodModelCopyWithImpl(this._value, this._then);

  final ApodModel _value;
  // ignore: unused_field
  final $Res Function(ApodModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? mediaType = freezed,
    Object? date = freezed,
    Object? explanation = freezed,
    Object? url = freezed,
    Object? hdurl = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      hdurl: hdurl == freezed
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ApodModelCopyWith<$Res> implements $ApodModelCopyWith<$Res> {
  factory _$$_ApodModelCopyWith(
          _$_ApodModel value, $Res Function(_$_ApodModel) then) =
      __$$_ApodModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: 'title') String title,
      @HiveField(1) @JsonKey(name: 'media_type') String? mediaType,
      @HiveField(2) @JsonKey(name: 'date') String date,
      @HiveField(3) @JsonKey(name: 'explanation') String explanation,
      @HiveField(4) @JsonKey(name: 'url', nullable: true) String? url,
      @HiveField(5) @JsonKey(name: 'hdurl', nullable: true) String? hdurl});
}

/// @nodoc
class __$$_ApodModelCopyWithImpl<$Res> extends _$ApodModelCopyWithImpl<$Res>
    implements _$$_ApodModelCopyWith<$Res> {
  __$$_ApodModelCopyWithImpl(
      _$_ApodModel _value, $Res Function(_$_ApodModel) _then)
      : super(_value, (v) => _then(v as _$_ApodModel));

  @override
  _$_ApodModel get _value => super._value as _$_ApodModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? mediaType = freezed,
    Object? date = freezed,
    Object? explanation = freezed,
    Object? url = freezed,
    Object? hdurl = freezed,
  }) {
    return _then(_$_ApodModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      hdurl: hdurl == freezed
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_ApodModel implements _ApodModel {
  const _$_ApodModel(
      {@HiveField(0)
      @JsonKey(name: 'title')
          required this.title,
      @HiveField(1)
      @JsonKey(name: 'media_type')
          required this.mediaType,
      @HiveField(2)
      @JsonKey(name: 'date')
          required this.date,
      @HiveField(3)
      @JsonKey(name: 'explanation')
          required this.explanation,
      @HiveField(4)
      @JsonKey(name: 'url', nullable: true)
          required this.url,
      @HiveField(5)
      @JsonKey(name: 'hdurl', nullable: true)
          required this.hdurl});

  factory _$_ApodModel.fromJson(Map<String, dynamic> json) =>
      _$$_ApodModelFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'title')
  final String title;
  @override
  @HiveField(1)
  @JsonKey(name: 'media_type')
  final String? mediaType;
  @override
  @HiveField(2)
  @JsonKey(name: 'date')
  final String date;
  @override
  @HiveField(3)
  @JsonKey(name: 'explanation')
  final String explanation;
  @override
  @HiveField(4)
  @JsonKey(name: 'url', nullable: true)
  final String? url;
  @override
  @HiveField(5)
  @JsonKey(name: 'hdurl', nullable: true)
  final String? hdurl;

  @override
  String toString() {
    return 'ApodModel(title: $title, mediaType: $mediaType, date: $date, explanation: $explanation, url: $url, hdurl: $hdurl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApodModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.mediaType, mediaType) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.explanation, explanation) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.hdurl, hdurl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(mediaType),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(explanation),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(hdurl));

  @JsonKey(ignore: true)
  @override
  _$$_ApodModelCopyWith<_$_ApodModel> get copyWith =>
      __$$_ApodModelCopyWithImpl<_$_ApodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApodModelToJson(
      this,
    );
  }
}

abstract class _ApodModel implements ApodModel {
  const factory _ApodModel(
      {@HiveField(0)
      @JsonKey(name: 'title')
          required final String title,
      @HiveField(1)
      @JsonKey(name: 'media_type')
          required final String? mediaType,
      @HiveField(2)
      @JsonKey(name: 'date')
          required final String date,
      @HiveField(3)
      @JsonKey(name: 'explanation')
          required final String explanation,
      @HiveField(4)
      @JsonKey(name: 'url', nullable: true)
          required final String? url,
      @HiveField(5)
      @JsonKey(name: 'hdurl', nullable: true)
          required final String? hdurl}) = _$_ApodModel;

  factory _ApodModel.fromJson(Map<String, dynamic> json) =
      _$_ApodModel.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'title')
  String get title;
  @override
  @HiveField(1)
  @JsonKey(name: 'media_type')
  String? get mediaType;
  @override
  @HiveField(2)
  @JsonKey(name: 'date')
  String get date;
  @override
  @HiveField(3)
  @JsonKey(name: 'explanation')
  String get explanation;
  @override
  @HiveField(4)
  @JsonKey(name: 'url', nullable: true)
  String? get url;
  @override
  @HiveField(5)
  @JsonKey(name: 'hdurl', nullable: true)
  String? get hdurl;
  @override
  @JsonKey(ignore: true)
  _$$_ApodModelCopyWith<_$_ApodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

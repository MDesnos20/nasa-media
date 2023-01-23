// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'apod_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApodEntity {
  String get title => throw _privateConstructorUsedError;
  String get media_type => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get hdurl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApodEntityCopyWith<ApodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApodEntityCopyWith<$Res> {
  factory $ApodEntityCopyWith(
          ApodEntity value, $Res Function(ApodEntity) then) =
      _$ApodEntityCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String media_type,
      String date,
      String explanation,
      String url,
      String? hdurl});
}

/// @nodoc
class _$ApodEntityCopyWithImpl<$Res> implements $ApodEntityCopyWith<$Res> {
  _$ApodEntityCopyWithImpl(this._value, this._then);

  final ApodEntity _value;
  // ignore: unused_field
  final $Res Function(ApodEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? media_type = freezed,
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
      media_type: media_type == freezed
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      hdurl: hdurl == freezed
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ApodEntityCopyWith<$Res>
    implements $ApodEntityCopyWith<$Res> {
  factory _$$_ApodEntityCopyWith(
          _$_ApodEntity value, $Res Function(_$_ApodEntity) then) =
      __$$_ApodEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String media_type,
      String date,
      String explanation,
      String url,
      String? hdurl});
}

/// @nodoc
class __$$_ApodEntityCopyWithImpl<$Res> extends _$ApodEntityCopyWithImpl<$Res>
    implements _$$_ApodEntityCopyWith<$Res> {
  __$$_ApodEntityCopyWithImpl(
      _$_ApodEntity _value, $Res Function(_$_ApodEntity) _then)
      : super(_value, (v) => _then(v as _$_ApodEntity));

  @override
  _$_ApodEntity get _value => super._value as _$_ApodEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? media_type = freezed,
    Object? date = freezed,
    Object? explanation = freezed,
    Object? url = freezed,
    Object? hdurl = freezed,
  }) {
    return _then(_$_ApodEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      media_type: media_type == freezed
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      hdurl: hdurl == freezed
          ? _value.hdurl
          : hdurl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ApodEntity implements _ApodEntity {
  const _$_ApodEntity(
      {required this.title,
      required this.media_type,
      required this.date,
      required this.explanation,
      required this.url,
      required this.hdurl});

  @override
  final String title;
  @override
  final String media_type;
  @override
  final String date;
  @override
  final String explanation;
  @override
  final String url;
  @override
  final String? hdurl;

  @override
  String toString() {
    return 'ApodEntity(title: $title, media_type: $media_type, date: $date, explanation: $explanation, url: $url, hdurl: $hdurl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApodEntity &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.media_type, media_type) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.explanation, explanation) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.hdurl, hdurl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(media_type),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(explanation),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(hdurl));

  @JsonKey(ignore: true)
  @override
  _$$_ApodEntityCopyWith<_$_ApodEntity> get copyWith =>
      __$$_ApodEntityCopyWithImpl<_$_ApodEntity>(this, _$identity);
}

abstract class _ApodEntity implements ApodEntity {
  const factory _ApodEntity(
      {required final String title,
      required final String media_type,
      required final String date,
      required final String explanation,
      required final String url,
      required final String? hdurl}) = _$_ApodEntity;

  @override
  String get title;
  @override
  String get media_type;
  @override
  String get date;
  @override
  String get explanation;
  @override
  String get url;
  @override
  String? get hdurl;
  @override
  @JsonKey(ignore: true)
  _$$_ApodEntityCopyWith<_$_ApodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

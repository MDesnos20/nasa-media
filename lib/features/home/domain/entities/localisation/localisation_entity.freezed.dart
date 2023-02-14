// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'localisation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalisationEntity {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalisationEntityCopyWith<LocalisationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalisationEntityCopyWith<$Res> {
  factory $LocalisationEntityCopyWith(
          LocalisationEntity value, $Res Function(LocalisationEntity) then) =
      _$LocalisationEntityCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocalisationEntityCopyWithImpl<$Res>
    implements $LocalisationEntityCopyWith<$Res> {
  _$LocalisationEntityCopyWithImpl(this._value, this._then);

  final LocalisationEntity _value;
  // ignore: unused_field
  final $Res Function(LocalisationEntity) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalisationEntityCopyWith<$Res>
    implements $LocalisationEntityCopyWith<$Res> {
  factory _$$_LocalisationEntityCopyWith(_$_LocalisationEntity value,
          $Res Function(_$_LocalisationEntity) then) =
      __$$_LocalisationEntityCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_LocalisationEntityCopyWithImpl<$Res>
    extends _$LocalisationEntityCopyWithImpl<$Res>
    implements _$$_LocalisationEntityCopyWith<$Res> {
  __$$_LocalisationEntityCopyWithImpl(
      _$_LocalisationEntity _value, $Res Function(_$_LocalisationEntity) _then)
      : super(_value, (v) => _then(v as _$_LocalisationEntity));

  @override
  _$_LocalisationEntity get _value => super._value as _$_LocalisationEntity;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_LocalisationEntity(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LocalisationEntity implements _LocalisationEntity {
  const _$_LocalisationEntity(
      {required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LocalisationEntity(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalisationEntity &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$$_LocalisationEntityCopyWith<_$_LocalisationEntity> get copyWith =>
      __$$_LocalisationEntityCopyWithImpl<_$_LocalisationEntity>(
          this, _$identity);
}

abstract class _LocalisationEntity implements LocalisationEntity {
  const factory _LocalisationEntity(
      {required final double latitude,
      required final double longitude}) = _$_LocalisationEntity;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LocalisationEntityCopyWith<_$_LocalisationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

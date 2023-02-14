// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'google_map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoogleMapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraPosition cameraPosition) launchMap,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CameraPosition cameraPosition)? launchMap,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraPosition cameraPosition)? launchMap,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LaunchMap value) launchMap,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LaunchMap value)? launchMap,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LaunchMap value)? launchMap,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapStateCopyWith<$Res> {
  factory $GoogleMapStateCopyWith(
          GoogleMapState value, $Res Function(GoogleMapState) then) =
      _$GoogleMapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoogleMapStateCopyWithImpl<$Res>
    implements $GoogleMapStateCopyWith<$Res> {
  _$GoogleMapStateCopyWithImpl(this._value, this._then);

  final GoogleMapState _value;
  // ignore: unused_field
  final $Res Function(GoogleMapState) _then;
}

/// @nodoc
abstract class _$$_LaunchMapCopyWith<$Res> {
  factory _$$_LaunchMapCopyWith(
          _$_LaunchMap value, $Res Function(_$_LaunchMap) then) =
      __$$_LaunchMapCopyWithImpl<$Res>;
  $Res call({CameraPosition cameraPosition});
}

/// @nodoc
class __$$_LaunchMapCopyWithImpl<$Res>
    extends _$GoogleMapStateCopyWithImpl<$Res>
    implements _$$_LaunchMapCopyWith<$Res> {
  __$$_LaunchMapCopyWithImpl(
      _$_LaunchMap _value, $Res Function(_$_LaunchMap) _then)
      : super(_value, (v) => _then(v as _$_LaunchMap));

  @override
  _$_LaunchMap get _value => super._value as _$_LaunchMap;

  @override
  $Res call({
    Object? cameraPosition = freezed,
  }) {
    return _then(_$_LaunchMap(
      cameraPosition == freezed
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
    ));
  }
}

/// @nodoc

class _$_LaunchMap implements _LaunchMap {
  const _$_LaunchMap(this.cameraPosition);

  @override
  final CameraPosition cameraPosition;

  @override
  String toString() {
    return 'GoogleMapState.launchMap(cameraPosition: $cameraPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchMap &&
            const DeepCollectionEquality()
                .equals(other.cameraPosition, cameraPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cameraPosition));

  @JsonKey(ignore: true)
  @override
  _$$_LaunchMapCopyWith<_$_LaunchMap> get copyWith =>
      __$$_LaunchMapCopyWithImpl<_$_LaunchMap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraPosition cameraPosition) launchMap,
    required TResult Function() loading,
  }) {
    return launchMap(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CameraPosition cameraPosition)? launchMap,
    TResult Function()? loading,
  }) {
    return launchMap?.call(cameraPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraPosition cameraPosition)? launchMap,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (launchMap != null) {
      return launchMap(cameraPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LaunchMap value) launchMap,
    required TResult Function(_Loading value) loading,
  }) {
    return launchMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LaunchMap value)? launchMap,
    TResult Function(_Loading value)? loading,
  }) {
    return launchMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LaunchMap value)? launchMap,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (launchMap != null) {
      return launchMap(this);
    }
    return orElse();
  }
}

abstract class _LaunchMap implements GoogleMapState {
  const factory _LaunchMap(final CameraPosition cameraPosition) = _$_LaunchMap;

  CameraPosition get cameraPosition;
  @JsonKey(ignore: true)
  _$$_LaunchMapCopyWith<_$_LaunchMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$GoogleMapStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GoogleMapState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraPosition cameraPosition) launchMap,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CameraPosition cameraPosition)? launchMap,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraPosition cameraPosition)? launchMap,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LaunchMap value) launchMap,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LaunchMap value)? launchMap,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LaunchMap value)? launchMap,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GoogleMapState {
  const factory _Loading() = _$_Loading;
}

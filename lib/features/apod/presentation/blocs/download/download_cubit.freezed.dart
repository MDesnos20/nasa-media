// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DownloadTaskInfoEntity task) downloading,
    required TResult Function() error,
    required TResult Function() readyToDownload,
    required TResult Function() downloaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToDownload value) readyToDownload,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  final DownloadState _value;
  // ignore: unused_field
  final $Res Function(DownloadState) _then;
}

/// @nodoc
abstract class _$$_DownloadingCopyWith<$Res> {
  factory _$$_DownloadingCopyWith(
          _$_Downloading value, $Res Function(_$_Downloading) then) =
      __$$_DownloadingCopyWithImpl<$Res>;
  $Res call({DownloadTaskInfoEntity task});

  $DownloadTaskInfoEntityCopyWith<$Res> get task;
}

/// @nodoc
class __$$_DownloadingCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$_DownloadingCopyWith<$Res> {
  __$$_DownloadingCopyWithImpl(
      _$_Downloading _value, $Res Function(_$_Downloading) _then)
      : super(_value, (v) => _then(v as _$_Downloading));

  @override
  _$_Downloading get _value => super._value as _$_Downloading;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$_Downloading(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as DownloadTaskInfoEntity,
    ));
  }

  @override
  $DownloadTaskInfoEntityCopyWith<$Res> get task {
    return $DownloadTaskInfoEntityCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_Downloading implements _Downloading {
  const _$_Downloading(this.task);

  @override
  final DownloadTaskInfoEntity task;

  @override
  String toString() {
    return 'DownloadState.downloading(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Downloading &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadingCopyWith<_$_Downloading> get copyWith =>
      __$$_DownloadingCopyWithImpl<_$_Downloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DownloadTaskInfoEntity task) downloading,
    required TResult Function() error,
    required TResult Function() readyToDownload,
    required TResult Function() downloaded,
    required TResult Function() loading,
  }) {
    return downloading(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
  }) {
    return downloading?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToDownload value) readyToDownload,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Loading value) loading,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class _Downloading implements DownloadState {
  const factory _Downloading(final DownloadTaskInfoEntity task) =
      _$_Downloading;

  DownloadTaskInfoEntity get task;
  @JsonKey(ignore: true)
  _$$_DownloadingCopyWith<_$_Downloading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'DownloadState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DownloadTaskInfoEntity task) downloading,
    required TResult Function() error,
    required TResult Function() readyToDownload,
    required TResult Function() downloaded,
    required TResult Function() loading,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToDownload value) readyToDownload,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Loading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DownloadState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_ReadyToDownloadCopyWith<$Res> {
  factory _$$_ReadyToDownloadCopyWith(
          _$_ReadyToDownload value, $Res Function(_$_ReadyToDownload) then) =
      __$$_ReadyToDownloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadyToDownloadCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$_ReadyToDownloadCopyWith<$Res> {
  __$$_ReadyToDownloadCopyWithImpl(
      _$_ReadyToDownload _value, $Res Function(_$_ReadyToDownload) _then)
      : super(_value, (v) => _then(v as _$_ReadyToDownload));

  @override
  _$_ReadyToDownload get _value => super._value as _$_ReadyToDownload;
}

/// @nodoc

class _$_ReadyToDownload implements _ReadyToDownload {
  const _$_ReadyToDownload();

  @override
  String toString() {
    return 'DownloadState.readyToDownload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReadyToDownload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DownloadTaskInfoEntity task) downloading,
    required TResult Function() error,
    required TResult Function() readyToDownload,
    required TResult Function() downloaded,
    required TResult Function() loading,
  }) {
    return readyToDownload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
  }) {
    return readyToDownload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (readyToDownload != null) {
      return readyToDownload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToDownload value) readyToDownload,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Loading value) loading,
  }) {
    return readyToDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
  }) {
    return readyToDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (readyToDownload != null) {
      return readyToDownload(this);
    }
    return orElse();
  }
}

abstract class _ReadyToDownload implements DownloadState {
  const factory _ReadyToDownload() = _$_ReadyToDownload;
}

/// @nodoc
abstract class _$$_DownloadedCopyWith<$Res> {
  factory _$$_DownloadedCopyWith(
          _$_Downloaded value, $Res Function(_$_Downloaded) then) =
      __$$_DownloadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DownloadedCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$_DownloadedCopyWith<$Res> {
  __$$_DownloadedCopyWithImpl(
      _$_Downloaded _value, $Res Function(_$_Downloaded) _then)
      : super(_value, (v) => _then(v as _$_Downloaded));

  @override
  _$_Downloaded get _value => super._value as _$_Downloaded;
}

/// @nodoc

class _$_Downloaded implements _Downloaded {
  const _$_Downloaded();

  @override
  String toString() {
    return 'DownloadState.downloaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Downloaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DownloadTaskInfoEntity task) downloading,
    required TResult Function() error,
    required TResult Function() readyToDownload,
    required TResult Function() downloaded,
    required TResult Function() loading,
  }) {
    return downloaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
  }) {
    return downloaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToDownload value) readyToDownload,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Loading value) loading,
  }) {
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
  }) {
    return downloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(this);
    }
    return orElse();
  }
}

abstract class _Downloaded implements DownloadState {
  const factory _Downloaded() = _$_Downloaded;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$DownloadStateCopyWithImpl<$Res>
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
    return 'DownloadState.loading()';
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
    required TResult Function(DownloadTaskInfoEntity task) downloading,
    required TResult Function() error,
    required TResult Function() readyToDownload,
    required TResult Function() downloaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadTaskInfoEntity task)? downloading,
    TResult Function()? error,
    TResult Function()? readyToDownload,
    TResult Function()? downloaded,
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
    required TResult Function(_Downloading value) downloading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToDownload value) readyToDownload,
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloading value)? downloading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToDownload value)? readyToDownload,
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DownloadState {
  const factory _Loading() = _$_Loading;
}

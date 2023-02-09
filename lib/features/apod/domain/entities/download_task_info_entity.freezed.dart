// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_task_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadTaskInfoEntity {
  int get progress => throw _privateConstructorUsedError;
  DownloadTaskStatus get status => throw _privateConstructorUsedError;
  String get taskId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadTaskInfoEntityCopyWith<DownloadTaskInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadTaskInfoEntityCopyWith<$Res> {
  factory $DownloadTaskInfoEntityCopyWith(DownloadTaskInfoEntity value,
          $Res Function(DownloadTaskInfoEntity) then) =
      _$DownloadTaskInfoEntityCopyWithImpl<$Res>;
  $Res call({int progress, DownloadTaskStatus status, String taskId});
}

/// @nodoc
class _$DownloadTaskInfoEntityCopyWithImpl<$Res>
    implements $DownloadTaskInfoEntityCopyWith<$Res> {
  _$DownloadTaskInfoEntityCopyWithImpl(this._value, this._then);

  final DownloadTaskInfoEntity _value;
  // ignore: unused_field
  final $Res Function(DownloadTaskInfoEntity) _then;

  @override
  $Res call({
    Object? progress = freezed,
    Object? status = freezed,
    Object? taskId = freezed,
  }) {
    return _then(_value.copyWith(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadTaskStatus,
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadTaskInfoEntityCopyWith<$Res>
    implements $DownloadTaskInfoEntityCopyWith<$Res> {
  factory _$$_DownloadTaskInfoEntityCopyWith(_$_DownloadTaskInfoEntity value,
          $Res Function(_$_DownloadTaskInfoEntity) then) =
      __$$_DownloadTaskInfoEntityCopyWithImpl<$Res>;
  @override
  $Res call({int progress, DownloadTaskStatus status, String taskId});
}

/// @nodoc
class __$$_DownloadTaskInfoEntityCopyWithImpl<$Res>
    extends _$DownloadTaskInfoEntityCopyWithImpl<$Res>
    implements _$$_DownloadTaskInfoEntityCopyWith<$Res> {
  __$$_DownloadTaskInfoEntityCopyWithImpl(_$_DownloadTaskInfoEntity _value,
      $Res Function(_$_DownloadTaskInfoEntity) _then)
      : super(_value, (v) => _then(v as _$_DownloadTaskInfoEntity));

  @override
  _$_DownloadTaskInfoEntity get _value =>
      super._value as _$_DownloadTaskInfoEntity;

  @override
  $Res call({
    Object? progress = freezed,
    Object? status = freezed,
    Object? taskId = freezed,
  }) {
    return _then(_$_DownloadTaskInfoEntity(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadTaskStatus,
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DownloadTaskInfoEntity implements _DownloadTaskInfoEntity {
  const _$_DownloadTaskInfoEntity(
      {required this.progress, required this.status, required this.taskId});

  @override
  final int progress;
  @override
  final DownloadTaskStatus status;
  @override
  final String taskId;

  @override
  String toString() {
    return 'DownloadTaskInfoEntity(progress: $progress, status: $status, taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadTaskInfoEntity &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.taskId, taskId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(taskId));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadTaskInfoEntityCopyWith<_$_DownloadTaskInfoEntity> get copyWith =>
      __$$_DownloadTaskInfoEntityCopyWithImpl<_$_DownloadTaskInfoEntity>(
          this, _$identity);
}

abstract class _DownloadTaskInfoEntity implements DownloadTaskInfoEntity {
  const factory _DownloadTaskInfoEntity(
      {required final int progress,
      required final DownloadTaskStatus status,
      required final String taskId}) = _$_DownloadTaskInfoEntity;

  @override
  int get progress;
  @override
  DownloadTaskStatus get status;
  @override
  String get taskId;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadTaskInfoEntityCopyWith<_$_DownloadTaskInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

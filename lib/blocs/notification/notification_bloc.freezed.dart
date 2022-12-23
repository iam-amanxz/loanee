// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppNotification notification)
        showErrorNotification,
    required TResult Function(AppNotification notification)
        showSuccessNotification,
    required TResult Function() clearNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppNotification notification)? showErrorNotification,
    TResult? Function(AppNotification notification)? showSuccessNotification,
    TResult? Function()? clearNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppNotification notification)? showErrorNotification,
    TResult Function(AppNotification notification)? showSuccessNotification,
    TResult Function()? clearNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowErrorNotificationEvent value)
        showErrorNotification,
    required TResult Function(ShowSuccessNotificationEvent value)
        showSuccessNotification,
    required TResult Function(ClearNotificationsEvent value) clearNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowErrorNotificationEvent value)? showErrorNotification,
    TResult? Function(ShowSuccessNotificationEvent value)?
        showSuccessNotification,
    TResult? Function(ClearNotificationsEvent value)? clearNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowErrorNotificationEvent value)? showErrorNotification,
    TResult Function(ShowSuccessNotificationEvent value)?
        showSuccessNotification,
    TResult Function(ClearNotificationsEvent value)? clearNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowErrorNotificationEventCopyWith<$Res> {
  factory _$$ShowErrorNotificationEventCopyWith(
          _$ShowErrorNotificationEvent value,
          $Res Function(_$ShowErrorNotificationEvent) then) =
      __$$ShowErrorNotificationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AppNotification notification});
}

/// @nodoc
class __$$ShowErrorNotificationEventCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ShowErrorNotificationEvent>
    implements _$$ShowErrorNotificationEventCopyWith<$Res> {
  __$$ShowErrorNotificationEventCopyWithImpl(
      _$ShowErrorNotificationEvent _value,
      $Res Function(_$ShowErrorNotificationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$ShowErrorNotificationEvent(
      null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as AppNotification,
    ));
  }
}

/// @nodoc

class _$ShowErrorNotificationEvent implements ShowErrorNotificationEvent {
  const _$ShowErrorNotificationEvent(this.notification);

  @override
  final AppNotification notification;

  @override
  String toString() {
    return 'NotificationEvent.showErrorNotification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowErrorNotificationEvent &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowErrorNotificationEventCopyWith<_$ShowErrorNotificationEvent>
      get copyWith => __$$ShowErrorNotificationEventCopyWithImpl<
          _$ShowErrorNotificationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppNotification notification)
        showErrorNotification,
    required TResult Function(AppNotification notification)
        showSuccessNotification,
    required TResult Function() clearNotifications,
  }) {
    return showErrorNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppNotification notification)? showErrorNotification,
    TResult? Function(AppNotification notification)? showSuccessNotification,
    TResult? Function()? clearNotifications,
  }) {
    return showErrorNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppNotification notification)? showErrorNotification,
    TResult Function(AppNotification notification)? showSuccessNotification,
    TResult Function()? clearNotifications,
    required TResult orElse(),
  }) {
    if (showErrorNotification != null) {
      return showErrorNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowErrorNotificationEvent value)
        showErrorNotification,
    required TResult Function(ShowSuccessNotificationEvent value)
        showSuccessNotification,
    required TResult Function(ClearNotificationsEvent value) clearNotifications,
  }) {
    return showErrorNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowErrorNotificationEvent value)? showErrorNotification,
    TResult? Function(ShowSuccessNotificationEvent value)?
        showSuccessNotification,
    TResult? Function(ClearNotificationsEvent value)? clearNotifications,
  }) {
    return showErrorNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowErrorNotificationEvent value)? showErrorNotification,
    TResult Function(ShowSuccessNotificationEvent value)?
        showSuccessNotification,
    TResult Function(ClearNotificationsEvent value)? clearNotifications,
    required TResult orElse(),
  }) {
    if (showErrorNotification != null) {
      return showErrorNotification(this);
    }
    return orElse();
  }
}

abstract class ShowErrorNotificationEvent implements NotificationEvent {
  const factory ShowErrorNotificationEvent(final AppNotification notification) =
      _$ShowErrorNotificationEvent;

  AppNotification get notification;
  @JsonKey(ignore: true)
  _$$ShowErrorNotificationEventCopyWith<_$ShowErrorNotificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowSuccessNotificationEventCopyWith<$Res> {
  factory _$$ShowSuccessNotificationEventCopyWith(
          _$ShowSuccessNotificationEvent value,
          $Res Function(_$ShowSuccessNotificationEvent) then) =
      __$$ShowSuccessNotificationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AppNotification notification});
}

/// @nodoc
class __$$ShowSuccessNotificationEventCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$ShowSuccessNotificationEvent>
    implements _$$ShowSuccessNotificationEventCopyWith<$Res> {
  __$$ShowSuccessNotificationEventCopyWithImpl(
      _$ShowSuccessNotificationEvent _value,
      $Res Function(_$ShowSuccessNotificationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$ShowSuccessNotificationEvent(
      null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as AppNotification,
    ));
  }
}

/// @nodoc

class _$ShowSuccessNotificationEvent implements ShowSuccessNotificationEvent {
  const _$ShowSuccessNotificationEvent(this.notification);

  @override
  final AppNotification notification;

  @override
  String toString() {
    return 'NotificationEvent.showSuccessNotification(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSuccessNotificationEvent &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSuccessNotificationEventCopyWith<_$ShowSuccessNotificationEvent>
      get copyWith => __$$ShowSuccessNotificationEventCopyWithImpl<
          _$ShowSuccessNotificationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppNotification notification)
        showErrorNotification,
    required TResult Function(AppNotification notification)
        showSuccessNotification,
    required TResult Function() clearNotifications,
  }) {
    return showSuccessNotification(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppNotification notification)? showErrorNotification,
    TResult? Function(AppNotification notification)? showSuccessNotification,
    TResult? Function()? clearNotifications,
  }) {
    return showSuccessNotification?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppNotification notification)? showErrorNotification,
    TResult Function(AppNotification notification)? showSuccessNotification,
    TResult Function()? clearNotifications,
    required TResult orElse(),
  }) {
    if (showSuccessNotification != null) {
      return showSuccessNotification(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowErrorNotificationEvent value)
        showErrorNotification,
    required TResult Function(ShowSuccessNotificationEvent value)
        showSuccessNotification,
    required TResult Function(ClearNotificationsEvent value) clearNotifications,
  }) {
    return showSuccessNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowErrorNotificationEvent value)? showErrorNotification,
    TResult? Function(ShowSuccessNotificationEvent value)?
        showSuccessNotification,
    TResult? Function(ClearNotificationsEvent value)? clearNotifications,
  }) {
    return showSuccessNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowErrorNotificationEvent value)? showErrorNotification,
    TResult Function(ShowSuccessNotificationEvent value)?
        showSuccessNotification,
    TResult Function(ClearNotificationsEvent value)? clearNotifications,
    required TResult orElse(),
  }) {
    if (showSuccessNotification != null) {
      return showSuccessNotification(this);
    }
    return orElse();
  }
}

abstract class ShowSuccessNotificationEvent implements NotificationEvent {
  const factory ShowSuccessNotificationEvent(
      final AppNotification notification) = _$ShowSuccessNotificationEvent;

  AppNotification get notification;
  @JsonKey(ignore: true)
  _$$ShowSuccessNotificationEventCopyWith<_$ShowSuccessNotificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearNotificationsEventCopyWith<$Res> {
  factory _$$ClearNotificationsEventCopyWith(_$ClearNotificationsEvent value,
          $Res Function(_$ClearNotificationsEvent) then) =
      __$$ClearNotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearNotificationsEventCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ClearNotificationsEvent>
    implements _$$ClearNotificationsEventCopyWith<$Res> {
  __$$ClearNotificationsEventCopyWithImpl(_$ClearNotificationsEvent _value,
      $Res Function(_$ClearNotificationsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearNotificationsEvent implements ClearNotificationsEvent {
  const _$ClearNotificationsEvent();

  @override
  String toString() {
    return 'NotificationEvent.clearNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearNotificationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppNotification notification)
        showErrorNotification,
    required TResult Function(AppNotification notification)
        showSuccessNotification,
    required TResult Function() clearNotifications,
  }) {
    return clearNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppNotification notification)? showErrorNotification,
    TResult? Function(AppNotification notification)? showSuccessNotification,
    TResult? Function()? clearNotifications,
  }) {
    return clearNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppNotification notification)? showErrorNotification,
    TResult Function(AppNotification notification)? showSuccessNotification,
    TResult Function()? clearNotifications,
    required TResult orElse(),
  }) {
    if (clearNotifications != null) {
      return clearNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowErrorNotificationEvent value)
        showErrorNotification,
    required TResult Function(ShowSuccessNotificationEvent value)
        showSuccessNotification,
    required TResult Function(ClearNotificationsEvent value) clearNotifications,
  }) {
    return clearNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowErrorNotificationEvent value)? showErrorNotification,
    TResult? Function(ShowSuccessNotificationEvent value)?
        showSuccessNotification,
    TResult? Function(ClearNotificationsEvent value)? clearNotifications,
  }) {
    return clearNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowErrorNotificationEvent value)? showErrorNotification,
    TResult Function(ShowSuccessNotificationEvent value)?
        showSuccessNotification,
    TResult Function(ClearNotificationsEvent value)? clearNotifications,
    required TResult orElse(),
  }) {
    if (clearNotifications != null) {
      return clearNotifications(this);
    }
    return orElse();
  }
}

abstract class ClearNotificationsEvent implements NotificationEvent {
  const factory ClearNotificationsEvent() = _$ClearNotificationsEvent;
}

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotificationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'NotificationState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements NotificationState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'NotificationState.error()';
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
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NotificationState {
  const factory _Error() = _$_Error;
}

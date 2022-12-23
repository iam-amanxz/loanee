// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionRecord _$TransactionRecordFromJson(Map<String, dynamic> json) {
  return _TransactionRecord.fromJson(json);
}

/// @nodoc
mixin _$TransactionRecord {
  double get amount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionRecordCopyWith<TransactionRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRecordCopyWith<$Res> {
  factory $TransactionRecordCopyWith(
          TransactionRecord value, $Res Function(TransactionRecord) then) =
      _$TransactionRecordCopyWithImpl<$Res, TransactionRecord>;
  @useResult
  $Res call({double amount, DateTime createdAt});
}

/// @nodoc
class _$TransactionRecordCopyWithImpl<$Res, $Val extends TransactionRecord>
    implements $TransactionRecordCopyWith<$Res> {
  _$TransactionRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionRecordCopyWith<$Res>
    implements $TransactionRecordCopyWith<$Res> {
  factory _$$_TransactionRecordCopyWith(_$_TransactionRecord value,
          $Res Function(_$_TransactionRecord) then) =
      __$$_TransactionRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, DateTime createdAt});
}

/// @nodoc
class __$$_TransactionRecordCopyWithImpl<$Res>
    extends _$TransactionRecordCopyWithImpl<$Res, _$_TransactionRecord>
    implements _$$_TransactionRecordCopyWith<$Res> {
  __$$_TransactionRecordCopyWithImpl(
      _$_TransactionRecord _value, $Res Function(_$_TransactionRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? createdAt = null,
  }) {
    return _then(_$_TransactionRecord(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionRecord implements _TransactionRecord {
  const _$_TransactionRecord({required this.amount, required this.createdAt});

  factory _$_TransactionRecord.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionRecordFromJson(json);

  @override
  final double amount;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'TransactionRecord(amount: $amount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionRecord &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionRecordCopyWith<_$_TransactionRecord> get copyWith =>
      __$$_TransactionRecordCopyWithImpl<_$_TransactionRecord>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionRecordToJson(
      this,
    );
  }
}

abstract class _TransactionRecord implements TransactionRecord {
  const factory _TransactionRecord(
      {required final double amount,
      required final DateTime createdAt}) = _$_TransactionRecord;

  factory _TransactionRecord.fromJson(Map<String, dynamic> json) =
      _$_TransactionRecord.fromJson;

  @override
  double get amount;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionRecordCopyWith<_$_TransactionRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

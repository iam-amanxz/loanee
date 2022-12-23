// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) createTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(String transactionId) loadTransaction,
    required TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)
        settleTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTransactions,
    TResult? Function(Transaction transaction)? createTransaction,
    TResult? Function(Transaction transaction)? deleteTransaction,
    TResult? Function(String transactionId)? loadTransaction,
    TResult? Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? createTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(String transactionId)? loadTransaction,
    TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(CreateTransactionEvent value) createTransaction,
    required TResult Function(DeleteTransactionEvent value) deleteTransaction,
    required TResult Function(LoadTransactionEvent value) loadTransaction,
    required TResult Function(SettleTransactionEvent value) settleTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(CreateTransactionEvent value)? createTransaction,
    TResult? Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult? Function(LoadTransactionEvent value)? loadTransaction,
    TResult? Function(SettleTransactionEvent value)? settleTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(CreateTransactionEvent value)? createTransaction,
    TResult Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult Function(LoadTransactionEvent value)? loadTransaction,
    TResult Function(SettleTransactionEvent value)? settleTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadTransactionsEventCopyWith<$Res> {
  factory _$$LoadTransactionsEventCopyWith(_$LoadTransactionsEvent value,
          $Res Function(_$LoadTransactionsEvent) then) =
      __$$LoadTransactionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTransactionsEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$LoadTransactionsEvent>
    implements _$$LoadTransactionsEventCopyWith<$Res> {
  __$$LoadTransactionsEventCopyWithImpl(_$LoadTransactionsEvent _value,
      $Res Function(_$LoadTransactionsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadTransactionsEvent implements LoadTransactionsEvent {
  const _$LoadTransactionsEvent();

  @override
  String toString() {
    return 'TransactionEvent.loadTransactions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTransactionsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) createTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(String transactionId) loadTransaction,
    required TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)
        settleTransaction,
  }) {
    return loadTransactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTransactions,
    TResult? Function(Transaction transaction)? createTransaction,
    TResult? Function(Transaction transaction)? deleteTransaction,
    TResult? Function(String transactionId)? loadTransaction,
    TResult? Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
  }) {
    return loadTransactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? createTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(String transactionId)? loadTransaction,
    TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(CreateTransactionEvent value) createTransaction,
    required TResult Function(DeleteTransactionEvent value) deleteTransaction,
    required TResult Function(LoadTransactionEvent value) loadTransaction,
    required TResult Function(SettleTransactionEvent value) settleTransaction,
  }) {
    return loadTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(CreateTransactionEvent value)? createTransaction,
    TResult? Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult? Function(LoadTransactionEvent value)? loadTransaction,
    TResult? Function(SettleTransactionEvent value)? settleTransaction,
  }) {
    return loadTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(CreateTransactionEvent value)? createTransaction,
    TResult Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult Function(LoadTransactionEvent value)? loadTransaction,
    TResult Function(SettleTransactionEvent value)? settleTransaction,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions(this);
    }
    return orElse();
  }
}

abstract class LoadTransactionsEvent implements TransactionEvent {
  const factory LoadTransactionsEvent() = _$LoadTransactionsEvent;
}

/// @nodoc
abstract class _$$CreateTransactionEventCopyWith<$Res> {
  factory _$$CreateTransactionEventCopyWith(_$CreateTransactionEvent value,
          $Res Function(_$CreateTransactionEvent) then) =
      __$$CreateTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Transaction transaction});

  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$CreateTransactionEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$CreateTransactionEvent>
    implements _$$CreateTransactionEventCopyWith<$Res> {
  __$$CreateTransactionEventCopyWithImpl(_$CreateTransactionEvent _value,
      $Res Function(_$CreateTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$CreateTransactionEvent(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc

class _$CreateTransactionEvent implements CreateTransactionEvent {
  const _$CreateTransactionEvent(this.transaction);

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'TransactionEvent.createTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTransactionEvent &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTransactionEventCopyWith<_$CreateTransactionEvent> get copyWith =>
      __$$CreateTransactionEventCopyWithImpl<_$CreateTransactionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) createTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(String transactionId) loadTransaction,
    required TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)
        settleTransaction,
  }) {
    return createTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTransactions,
    TResult? Function(Transaction transaction)? createTransaction,
    TResult? Function(Transaction transaction)? deleteTransaction,
    TResult? Function(String transactionId)? loadTransaction,
    TResult? Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
  }) {
    return createTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? createTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(String transactionId)? loadTransaction,
    TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
    required TResult orElse(),
  }) {
    if (createTransaction != null) {
      return createTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(CreateTransactionEvent value) createTransaction,
    required TResult Function(DeleteTransactionEvent value) deleteTransaction,
    required TResult Function(LoadTransactionEvent value) loadTransaction,
    required TResult Function(SettleTransactionEvent value) settleTransaction,
  }) {
    return createTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(CreateTransactionEvent value)? createTransaction,
    TResult? Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult? Function(LoadTransactionEvent value)? loadTransaction,
    TResult? Function(SettleTransactionEvent value)? settleTransaction,
  }) {
    return createTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(CreateTransactionEvent value)? createTransaction,
    TResult Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult Function(LoadTransactionEvent value)? loadTransaction,
    TResult Function(SettleTransactionEvent value)? settleTransaction,
    required TResult orElse(),
  }) {
    if (createTransaction != null) {
      return createTransaction(this);
    }
    return orElse();
  }
}

abstract class CreateTransactionEvent implements TransactionEvent {
  const factory CreateTransactionEvent(final Transaction transaction) =
      _$CreateTransactionEvent;

  Transaction get transaction;
  @JsonKey(ignore: true)
  _$$CreateTransactionEventCopyWith<_$CreateTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTransactionEventCopyWith<$Res> {
  factory _$$DeleteTransactionEventCopyWith(_$DeleteTransactionEvent value,
          $Res Function(_$DeleteTransactionEvent) then) =
      __$$DeleteTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Transaction transaction});

  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$DeleteTransactionEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$DeleteTransactionEvent>
    implements _$$DeleteTransactionEventCopyWith<$Res> {
  __$$DeleteTransactionEventCopyWithImpl(_$DeleteTransactionEvent _value,
      $Res Function(_$DeleteTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$DeleteTransactionEvent(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc

class _$DeleteTransactionEvent implements DeleteTransactionEvent {
  const _$DeleteTransactionEvent(this.transaction);

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'TransactionEvent.deleteTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTransactionEvent &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTransactionEventCopyWith<_$DeleteTransactionEvent> get copyWith =>
      __$$DeleteTransactionEventCopyWithImpl<_$DeleteTransactionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) createTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(String transactionId) loadTransaction,
    required TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)
        settleTransaction,
  }) {
    return deleteTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTransactions,
    TResult? Function(Transaction transaction)? createTransaction,
    TResult? Function(Transaction transaction)? deleteTransaction,
    TResult? Function(String transactionId)? loadTransaction,
    TResult? Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
  }) {
    return deleteTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? createTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(String transactionId)? loadTransaction,
    TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(CreateTransactionEvent value) createTransaction,
    required TResult Function(DeleteTransactionEvent value) deleteTransaction,
    required TResult Function(LoadTransactionEvent value) loadTransaction,
    required TResult Function(SettleTransactionEvent value) settleTransaction,
  }) {
    return deleteTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(CreateTransactionEvent value)? createTransaction,
    TResult? Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult? Function(LoadTransactionEvent value)? loadTransaction,
    TResult? Function(SettleTransactionEvent value)? settleTransaction,
  }) {
    return deleteTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(CreateTransactionEvent value)? createTransaction,
    TResult Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult Function(LoadTransactionEvent value)? loadTransaction,
    TResult Function(SettleTransactionEvent value)? settleTransaction,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(this);
    }
    return orElse();
  }
}

abstract class DeleteTransactionEvent implements TransactionEvent {
  const factory DeleteTransactionEvent(final Transaction transaction) =
      _$DeleteTransactionEvent;

  Transaction get transaction;
  @JsonKey(ignore: true)
  _$$DeleteTransactionEventCopyWith<_$DeleteTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTransactionEventCopyWith<$Res> {
  factory _$$LoadTransactionEventCopyWith(_$LoadTransactionEvent value,
          $Res Function(_$LoadTransactionEvent) then) =
      __$$LoadTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String transactionId});
}

/// @nodoc
class __$$LoadTransactionEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$LoadTransactionEvent>
    implements _$$LoadTransactionEventCopyWith<$Res> {
  __$$LoadTransactionEventCopyWithImpl(_$LoadTransactionEvent _value,
      $Res Function(_$LoadTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_$LoadTransactionEvent(
      null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTransactionEvent implements LoadTransactionEvent {
  const _$LoadTransactionEvent(this.transactionId);

  @override
  final String transactionId;

  @override
  String toString() {
    return 'TransactionEvent.loadTransaction(transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransactionEvent &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTransactionEventCopyWith<_$LoadTransactionEvent> get copyWith =>
      __$$LoadTransactionEventCopyWithImpl<_$LoadTransactionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) createTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(String transactionId) loadTransaction,
    required TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)
        settleTransaction,
  }) {
    return loadTransaction(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTransactions,
    TResult? Function(Transaction transaction)? createTransaction,
    TResult? Function(Transaction transaction)? deleteTransaction,
    TResult? Function(String transactionId)? loadTransaction,
    TResult? Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
  }) {
    return loadTransaction?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? createTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(String transactionId)? loadTransaction,
    TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
    required TResult orElse(),
  }) {
    if (loadTransaction != null) {
      return loadTransaction(transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(CreateTransactionEvent value) createTransaction,
    required TResult Function(DeleteTransactionEvent value) deleteTransaction,
    required TResult Function(LoadTransactionEvent value) loadTransaction,
    required TResult Function(SettleTransactionEvent value) settleTransaction,
  }) {
    return loadTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(CreateTransactionEvent value)? createTransaction,
    TResult? Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult? Function(LoadTransactionEvent value)? loadTransaction,
    TResult? Function(SettleTransactionEvent value)? settleTransaction,
  }) {
    return loadTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(CreateTransactionEvent value)? createTransaction,
    TResult Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult Function(LoadTransactionEvent value)? loadTransaction,
    TResult Function(SettleTransactionEvent value)? settleTransaction,
    required TResult orElse(),
  }) {
    if (loadTransaction != null) {
      return loadTransaction(this);
    }
    return orElse();
  }
}

abstract class LoadTransactionEvent implements TransactionEvent {
  const factory LoadTransactionEvent(final String transactionId) =
      _$LoadTransactionEvent;

  String get transactionId;
  @JsonKey(ignore: true)
  _$$LoadTransactionEventCopyWith<_$LoadTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettleTransactionEventCopyWith<$Res> {
  factory _$$SettleTransactionEventCopyWith(_$SettleTransactionEvent value,
          $Res Function(_$SettleTransactionEvent) then) =
      __$$SettleTransactionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Transaction transaction, TransactionRecord transactionRecord});

  $TransactionCopyWith<$Res> get transaction;
  $TransactionRecordCopyWith<$Res> get transactionRecord;
}

/// @nodoc
class __$$SettleTransactionEventCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$SettleTransactionEvent>
    implements _$$SettleTransactionEventCopyWith<$Res> {
  __$$SettleTransactionEventCopyWithImpl(_$SettleTransactionEvent _value,
      $Res Function(_$SettleTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? transactionRecord = null,
  }) {
    return _then(_$SettleTransactionEvent(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      null == transactionRecord
          ? _value.transactionRecord
          : transactionRecord // ignore: cast_nullable_to_non_nullable
              as TransactionRecord,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionRecordCopyWith<$Res> get transactionRecord {
    return $TransactionRecordCopyWith<$Res>(_value.transactionRecord, (value) {
      return _then(_value.copyWith(transactionRecord: value));
    });
  }
}

/// @nodoc

class _$SettleTransactionEvent implements SettleTransactionEvent {
  const _$SettleTransactionEvent(this.transaction, this.transactionRecord);

  @override
  final Transaction transaction;
  @override
  final TransactionRecord transactionRecord;

  @override
  String toString() {
    return 'TransactionEvent.settleTransaction(transaction: $transaction, transactionRecord: $transactionRecord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettleTransactionEvent &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.transactionRecord, transactionRecord) ||
                other.transactionRecord == transactionRecord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction, transactionRecord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettleTransactionEventCopyWith<_$SettleTransactionEvent> get copyWith =>
      __$$SettleTransactionEventCopyWithImpl<_$SettleTransactionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadTransactions,
    required TResult Function(Transaction transaction) createTransaction,
    required TResult Function(Transaction transaction) deleteTransaction,
    required TResult Function(String transactionId) loadTransaction,
    required TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)
        settleTransaction,
  }) {
    return settleTransaction(transaction, transactionRecord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadTransactions,
    TResult? Function(Transaction transaction)? createTransaction,
    TResult? Function(Transaction transaction)? deleteTransaction,
    TResult? Function(String transactionId)? loadTransaction,
    TResult? Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
  }) {
    return settleTransaction?.call(transaction, transactionRecord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadTransactions,
    TResult Function(Transaction transaction)? createTransaction,
    TResult Function(Transaction transaction)? deleteTransaction,
    TResult Function(String transactionId)? loadTransaction,
    TResult Function(
            Transaction transaction, TransactionRecord transactionRecord)?
        settleTransaction,
    required TResult orElse(),
  }) {
    if (settleTransaction != null) {
      return settleTransaction(transaction, transactionRecord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(CreateTransactionEvent value) createTransaction,
    required TResult Function(DeleteTransactionEvent value) deleteTransaction,
    required TResult Function(LoadTransactionEvent value) loadTransaction,
    required TResult Function(SettleTransactionEvent value) settleTransaction,
  }) {
    return settleTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(CreateTransactionEvent value)? createTransaction,
    TResult? Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult? Function(LoadTransactionEvent value)? loadTransaction,
    TResult? Function(SettleTransactionEvent value)? settleTransaction,
  }) {
    return settleTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(CreateTransactionEvent value)? createTransaction,
    TResult Function(DeleteTransactionEvent value)? deleteTransaction,
    TResult Function(LoadTransactionEvent value)? loadTransaction,
    TResult Function(SettleTransactionEvent value)? settleTransaction,
    required TResult orElse(),
  }) {
    if (settleTransaction != null) {
      return settleTransaction(this);
    }
    return orElse();
  }
}

abstract class SettleTransactionEvent implements TransactionEvent {
  const factory SettleTransactionEvent(final Transaction transaction,
      final TransactionRecord transactionRecord) = _$SettleTransactionEvent;

  Transaction get transaction;
  TransactionRecord get transactionRecord;
  @JsonKey(ignore: true)
  _$$SettleTransactionEventCopyWith<_$SettleTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SuccessFlag flag) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SuccessFlag flag)? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SuccessFlag flag)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

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
    extends _$TransactionStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransactionState.initial()';
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
    required TResult Function() loading,
    required TResult Function(SuccessFlag flag) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SuccessFlag flag)? success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SuccessFlag flag)? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Initial implements TransactionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TransactionState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SuccessFlag flag) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SuccessFlag flag)? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SuccessFlag flag)? success,
    TResult Function()? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TransactionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({SuccessFlag flag});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
  }) {
    return _then(_$_Success(
      null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as SuccessFlag,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.flag);

  @override
  final SuccessFlag flag;

  @override
  String toString() {
    return 'TransactionState.success(flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SuccessFlag flag) success,
    required TResult Function() error,
  }) {
    return success(flag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SuccessFlag flag)? success,
    TResult? Function()? error,
  }) {
    return success?.call(flag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SuccessFlag flag)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(flag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Success implements TransactionState {
  const factory _Success(final SuccessFlag flag) = _$_Success;

  SuccessFlag get flag;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'TransactionState.error()';
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
    required TResult Function() loading,
    required TResult Function(SuccessFlag flag) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SuccessFlag flag)? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SuccessFlag flag)? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Error implements TransactionState {
  const factory _Error() = _$_Error;
}

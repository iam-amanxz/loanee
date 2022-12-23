// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Contact get contact => throw _privateConstructorUsedError;
  LoanType get loanType => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get dueAt => throw _privateConstructorUsedError;
  List<TransactionRecord> get transactionRecords =>
      throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {String id,
      String description,
      Contact contact,
      LoanType loanType,
      double amount,
      DateTime createdAt,
      DateTime dueAt,
      List<TransactionRecord> transactionRecords,
      bool isCompleted});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? contact = null,
    Object? loanType = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? dueAt = null,
    Object? transactionRecords = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      loanType: null == loanType
          ? _value.loanType
          : loanType // ignore: cast_nullable_to_non_nullable
              as LoanType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueAt: null == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactionRecords: null == transactionRecords
          ? _value.transactionRecords
          : transactionRecords // ignore: cast_nullable_to_non_nullable
              as List<TransactionRecord>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String description,
      Contact contact,
      LoanType loanType,
      double amount,
      DateTime createdAt,
      DateTime dueAt,
      List<TransactionRecord> transactionRecords,
      bool isCompleted});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? contact = null,
    Object? loanType = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? dueAt = null,
    Object? transactionRecords = null,
    Object? isCompleted = null,
  }) {
    return _then(_$_Transaction(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      loanType: null == loanType
          ? _value.loanType
          : loanType // ignore: cast_nullable_to_non_nullable
              as LoanType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueAt: null == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactionRecords: null == transactionRecords
          ? _value._transactionRecords
          : transactionRecords // ignore: cast_nullable_to_non_nullable
              as List<TransactionRecord>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {required this.id,
      required this.description,
      required this.contact,
      required this.loanType,
      required this.amount,
      required this.createdAt,
      required this.dueAt,
      final List<TransactionRecord> transactionRecords = const [],
      this.isCompleted = false})
      : _transactionRecords = transactionRecords;

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final Contact contact;
  @override
  final LoanType loanType;
  @override
  final double amount;
  @override
  final DateTime createdAt;
  @override
  final DateTime dueAt;
  final List<TransactionRecord> _transactionRecords;
  @override
  @JsonKey()
  List<TransactionRecord> get transactionRecords {
    if (_transactionRecords is EqualUnmodifiableListView)
      return _transactionRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionRecords);
  }

  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'Transaction(id: $id, description: $description, contact: $contact, loanType: $loanType, amount: $amount, createdAt: $createdAt, dueAt: $dueAt, transactionRecords: $transactionRecords, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.loanType, loanType) ||
                other.loanType == loanType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt) &&
            const DeepCollectionEquality()
                .equals(other._transactionRecords, _transactionRecords) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      contact,
      loanType,
      amount,
      createdAt,
      dueAt,
      const DeepCollectionEquality().hash(_transactionRecords),
      isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required final String id,
      required final String description,
      required final Contact contact,
      required final LoanType loanType,
      required final double amount,
      required final DateTime createdAt,
      required final DateTime dueAt,
      final List<TransactionRecord> transactionRecords,
      final bool isCompleted}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  Contact get contact;
  @override
  LoanType get loanType;
  @override
  double get amount;
  @override
  DateTime get createdAt;
  @override
  DateTime get dueAt;
  @override
  List<TransactionRecord> get transactionRecords;
  @override
  bool get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

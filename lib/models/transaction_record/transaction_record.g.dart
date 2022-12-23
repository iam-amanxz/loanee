// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionRecord _$$_TransactionRecordFromJson(Map<String, dynamic> json) =>
    _$_TransactionRecord(
      amount: (json['amount'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_TransactionRecordToJson(
        _$_TransactionRecord instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'createdAt': instance.createdAt.toIso8601String(),
    };

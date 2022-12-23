// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as String,
      description: json['description'] as String,
      contact: Contact.fromJson(json['contact'] as Map<String, dynamic>),
      loanType: $enumDecode(_$LoanTypeEnumMap, json['loanType']),
      amount: (json['amount'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      dueAt: DateTime.parse(json['dueAt'] as String),
      transactionRecords: (json['transactionRecords'] as List<dynamic>?)
              ?.map(
                  (e) => TransactionRecord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'contact': instance.contact.toJson(),
      'loanType': _$LoanTypeEnumMap[instance.loanType]!,
      'amount': instance.amount,
      'createdAt': instance.createdAt.toIso8601String(),
      'dueAt': instance.dueAt.toIso8601String(),
      'transactionRecords':
          instance.transactionRecords.map((e) => e.toJson()).toList(),
      'isCompleted': instance.isCompleted,
    };

const _$LoanTypeEnumMap = {
  LoanType.given: 'given',
  LoanType.taken: 'taken',
};

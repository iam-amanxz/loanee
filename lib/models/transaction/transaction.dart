import 'package:freezed_annotation/freezed_annotation.dart';

import '../contact/contact.dart';
import '../transaction_record/transaction_record.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

enum LoanType {
  given,
  taken,
}

extension LoanTypeExtension on LoanType {
  String get name {
    switch (this) {
      case LoanType.given:
        return 'Given';
      case LoanType.taken:
        return 'Taken';
    }
  }
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required String description,
    required Contact contact,
    required LoanType loanType,
    required double amount,
    required DateTime createdAt,
    required DateTime dueAt,
    @Default([]) List<TransactionRecord> transactionRecords,
    @Default(false) bool isCompleted,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, Object?> json) =>
      _$TransactionFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_record.freezed.dart';
part 'transaction_record.g.dart';

@freezed
class TransactionRecord with _$TransactionRecord {
  const factory TransactionRecord({
    required double amount,
    required DateTime createdAt,
  }) = _TransactionRecord;

  factory TransactionRecord.fromJson(Map<String, Object?> json) =>
      _$TransactionRecordFromJson(json);
}

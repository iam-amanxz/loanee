part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.createTransaction(Transaction transaction) =
      CreateTransactionEvent;
  const factory TransactionEvent.deleteTransaction(Transaction transaction) =
      DeleteTransactionEvent;
  const factory TransactionEvent.settleTransaction(
    Transaction transaction,
    TransactionRecord transactionRecord,
  ) = SettleTransactionEvent;
}

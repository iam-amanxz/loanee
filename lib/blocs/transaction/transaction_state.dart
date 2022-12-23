part of 'transaction_bloc.dart';

enum SuccessFlag {
  createdTransaction,
  loadedTransactions,
  loadedTransaction,
  deleteTransaction,
  settledTransaction,
}

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.loading() = _Loading;
  const factory TransactionState.success(SuccessFlag flag) = _Success;
  const factory TransactionState.error() = _Error;
}

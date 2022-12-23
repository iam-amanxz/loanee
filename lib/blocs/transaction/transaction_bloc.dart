import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/notification/notification.dart';
import '../../models/transaction/transaction.dart';
import '../../models/transaction_record/transaction_record.dart';
import '../../services/transaction_service.dart';
import '../notification/notification_bloc.dart';

part 'transaction_bloc.freezed.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionService transactionService;
  final WidgetRef ref;
  final NotificationBloc notificationBloc;

  TransactionBloc({
    required this.transactionService,
    required this.ref,
    required this.notificationBloc,
  }) : super(const TransactionState.initial()) {
    on<CreateTransactionEvent>(_onCreateTransaction);
    on<DeleteTransactionEvent>(_onDeleteTransaction);
    on<SettleTransactionEvent>(_onSettleTransaction);
  }

  Future<void> _onSettleTransaction(
    SettleTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    emit(const TransactionState.loading());
    try {
      await transactionService.settleTransaction(
        event.transaction,
        event.transactionRecord,
      );
      emit(const TransactionState.success(SuccessFlag.settledTransaction));
      notificationBloc.showSuccessNotification(
        AppNotification.successSettling('Transaction'),
      );
    } catch (_, __) {
      emit(const TransactionState.error());
      notificationBloc.showErrorNotification(
        AppNotification.errorSettling('Transaction'),
      );
    }
  }

  Future<void> _onCreateTransaction(
    CreateTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    emit(const TransactionState.loading());
    try {
      await transactionService.createTransaction(event.transaction);
      emit(const TransactionState.success(SuccessFlag.createdTransaction));
      notificationBloc.showSuccessNotification(
        AppNotification.successCreating('Transaction'),
      );
    } catch (e) {
      emit(const TransactionState.error());
      notificationBloc.showErrorNotification(
        AppNotification.errorCreating('Transaction'),
      );
    }
  }

  Future<void> _onDeleteTransaction(
    DeleteTransactionEvent event,
    Emitter<TransactionState> emit,
  ) async {
    emit(const TransactionState.loading());
    try {
      await transactionService.deleteTransaction(event.transaction);
      emit(const TransactionState.success(SuccessFlag.deleteTransaction));
      notificationBloc.showSuccessNotification(
        AppNotification.successDeleting('Transaction'),
      );
    } catch (e) {
      emit(const TransactionState.error());
      notificationBloc.showErrorNotification(
        AppNotification.errorDeleting('Transaction'),
      );
    }
  }

  void settleTransaction(
    Transaction transaction,
    TransactionRecord transactionRecord,
  ) =>
      add(
        TransactionEvent.settleTransaction(
          transaction,
          transactionRecord,
        ),
      );
  void createTransaction(Transaction transaction) => add(
        TransactionEvent.createTransaction(transaction),
      );
  void deleteTransaction(Transaction transaction) => add(
        TransactionEvent.deleteTransaction(transaction),
      );
}

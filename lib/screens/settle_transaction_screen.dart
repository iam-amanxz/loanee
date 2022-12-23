import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../blocs/notification/notification_bloc.dart';
import '../blocs/transaction/transaction_bloc.dart';
import '../models/notification/notification.dart';
import '../models/transaction/transaction.dart';
import '../models/transaction_record/transaction_record.dart';
import '../services/transaction_service.dart';
import '../config/widgets/base_button.dart';
import '../config/widgets/base_drop_down.dart';
import '../config/widgets/base_number_input.dart';
import '../config/widgets/side_drawer.dart';

enum SettlementType {
  full,
  partial,
}

extension SettlementTypeExtension on SettlementType {
  String get name {
    switch (this) {
      case SettlementType.full:
        return 'Full';
      case SettlementType.partial:
        return 'Partial';
    }
  }
}

class SettleTransactionScreen extends ConsumerStatefulWidget {
  final String transactionId;
  const SettleTransactionScreen({
    super.key,
    required this.transactionId,
  });

  @override
  ConsumerState<SettleTransactionScreen> createState() =>
      _SettleTransactionScreenState();
}

class _SettleTransactionScreenState
    extends ConsumerState<SettleTransactionScreen> {
  final ValueNotifier<SettlementType> _settlementType =
      ValueNotifier<SettlementType>(SettlementType.full);
  late final TextEditingController _settlementAmountController;

  @override
  void initState() {
    _settlementAmountController = TextEditingController();
    super.initState();
  }

  void _settleTransaction(Transaction transaction) {
    if (_settlementType.value == SettlementType.partial) {
      if (_settlementAmountController.text.trim().isEmpty) {
        context.read<NotificationBloc>().showErrorNotification(
              AppNotification.errorFieldRequired('Settlement amount'),
            );
        return;
      }
    }

    final paidAmount = transaction.transactionRecords
        .fold(0.0, (prev, curr) => prev + curr.amount);
    final pendingAmount = transaction.amount - paidAmount;
    final amount = _settlementType.value == SettlementType.full
        ? pendingAmount
        : double.parse(_settlementAmountController.text);
    if (pendingAmount == 0.0) {
      context.read<NotificationBloc>().showErrorNotification(
            AppNotification.errorAlreadySettled(),
          );
      return;
    }
    if (amount > pendingAmount) {
      context.read<NotificationBloc>().showErrorNotification(
            AppNotification.errorSettlementMaxReached(),
          );
      return;
    }
    final settlement =
        TransactionRecord(amount: amount, createdAt: DateTime.now());
    context.read<TransactionBloc>().settleTransaction(transaction, settlement);
    _settlementAmountController.clear();
    _settlementType.value = SettlementType.full;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Settle Transaction'),
      ),
      drawer: const SideDrawer(),
      body: StreamBuilder(
        stream: ref
            .watch(transactionServiceProvider)
            .currentTransactionStream(widget.transactionId),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Padding(
              padding: EdgeInsets.all(20.0),
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError || snapshot.data == null) {
            return const SizedBox();
          }
          final transaction = snapshot.requireData;
          final paidAmount = transaction.transactionRecords
              .fold(0.0, (prev, curr) => prev + curr.amount);
          final pendingAmount = transaction.amount - paidAmount;
          List<TransactionRecord> transactionRecords =
              transaction.transactionRecords.toList();
          transactionRecords.sort((a, b) => b.createdAt.compareTo(a.createdAt));
          return Column(
            children: [
              TransactionSummary(
                transaction: transaction,
                pendingAmount: pendingAmount,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      StatefulBuilder(
                        builder: ((context, setState) {
                          return BaseDropDown<SettlementType>(
                            selectedItem: _settlementType.value,
                            items: SettlementType.values,
                            itemAsString: ((item) => item.name),
                            label: 'Settlement type',
                            onChanged: (value) {
                              setState(() {
                                _settlementType.value = value!;
                              });
                            },
                          );
                        }),
                      ),
                      ValueListenableBuilder<SettlementType>(
                        valueListenable: _settlementType,
                        builder: ((context, value, child) {
                          return value == SettlementType.partial
                              ? const SizedBox(height: 10)
                              : const SizedBox();
                        }),
                      ),
                      ValueListenableBuilder<SettlementType>(
                        valueListenable: _settlementType,
                        builder: ((context, value, child) {
                          return value == SettlementType.partial
                              ? BaseNumberInput(
                                  controller: _settlementAmountController,
                                  label: 'Settlement Amount',
                                  decimal: true,
                                )
                              : const SizedBox();
                        }),
                      ),
                      const SizedBox(height: 20),
                      BlocBuilder<TransactionBloc, TransactionState>(
                        builder: (context, state) {
                          return BaseButton(
                            backgroundColor: Colors.indigo,
                            color: Colors.white,
                            label: 'Settle',
                            onTap: () {
                              _settleTransaction(transaction);
                            },
                            isLoading: state.maybeWhen(
                              loading: () => true,
                              orElse: () => false,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SettlementHistory(
                transactionRecords: transactionRecords,
              ),
            ],
          );
        }),
      ),
    );
  }
}

class SettlementHistory extends StatelessWidget {
  final List<TransactionRecord> transactionRecords;
  const SettlementHistory({super.key, required this.transactionRecords});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Settlement History',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                final record = transactionRecords[index];
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat('MMM dd, yyyy').format(record.createdAt),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Text(
                        record.amount.toString(),
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900,
                        ),
                      )
                    ],
                  ),
                );
              }),
              separatorBuilder: ((context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                );
              }),
              itemCount: transactionRecords.length,
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionSummary extends StatelessWidget {
  final Transaction transaction;
  final double pendingAmount;
  const TransactionSummary({
    super.key,
    required this.transaction,
    required this.pendingAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.shade200,
                    child: Icon(
                      transaction.loanType == LoanType.given
                          ? Icons.arrow_back
                          : Icons.arrow_forward,
                      size: 20,
                      color: transaction.loanType == LoanType.given
                          ? Colors.green
                          : Colors.redAccent,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.description,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "${transaction.contact.firstName} - ${DateFormat('MMM dd, yyyy').format(transaction.createdAt)}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "Pending amount: $pendingAmount",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                transaction.amount.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: transaction.loanType == LoanType.given
                      ? Colors.green
                      : Colors.redAccent,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

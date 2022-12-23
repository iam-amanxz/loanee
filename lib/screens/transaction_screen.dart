import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart' show GoRouter;
import 'package:intl/intl.dart' show DateFormat;

import '../blocs/transaction/transaction_bloc.dart';
import '../config/router.dart';
import '../models/transaction/transaction.dart';
import '../services/transaction_service.dart';
import '../config/widgets/base_drop_down.dart';
import '../config/widgets/empty_data_view.dart';
import '../config/widgets/error_data_view.dart';
import '../config/widgets/side_drawer.dart';

enum Filter { pending, completed }

extension FilterExtension on Filter {
  String get name {
    switch (this) {
      case Filter.pending:
        return 'Pending';
      case Filter.completed:
        return 'Completed';
    }
  }
}

class TransactionsScreen extends ConsumerStatefulWidget {
  const TransactionsScreen({super.key});

  @override
  ConsumerState<TransactionsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends ConsumerState<TransactionsScreen> {
  final _filter = ValueNotifier(Filter.pending);

  void _deleteTransaction(Transaction transaction) {
    context.read<TransactionBloc>().deleteTransaction(transaction);
    GoRouter.of(context).pop();
  }

  void _handeleOnSettlePressed(Transaction transaction) {
    GoRouter.of(context).goNamed(
      routeTransactionSettleName,
      params: {
        "transactionId": transaction.id,
      },
    );
  }

  void _handleOnDeletePressed(Transaction transaction) {
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: const Text('Delete transaction'),
          content: const Text(
            'This action is not reversible. Are you sure?',
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                _deleteTransaction(transaction);
              },
            ),
          ],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Transactions'),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).go(routeTransactionCreate);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      drawer: const SideDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BaseDropDown<Filter>(
              selectedItem: _filter.value,
              items: Filter.values,
              itemAsString: ((item) => item.name),
              label: 'Filtered by',
              onChanged: (value) {
                _filter.value = value!;
              },
            ),
          ),
          StreamBuilder<List<Transaction>>(
            stream: ref.watch(transactionServiceProvider).transactionsStream,
            builder: (context, snapshot) {
              return Expanded(
                child: ValueListenableBuilder(
                  valueListenable: _filter,
                  builder: (context, value, child) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return ErrorDataView(
                        onRetry: () {},
                      );
                    }
                    final transactions = snapshot.requireData;
                    final pendingTransactions =
                        transactions.where((tr) => !tr.isCompleted).toList();
                    final completedTransactions =
                        transactions.where((tr) => tr.isCompleted).toList();
                    final selectedTransactions = value == Filter.completed
                        ? completedTransactions
                        : pendingTransactions;
                    if (selectedTransactions.isEmpty) {
                      return EmptyDataView(
                        onCreate: () {
                          GoRouter.of(context).go(routeTransactionCreate);
                        },
                        label: 'Transaction',
                      );
                    }
                    return SlidableAutoCloseBehavior(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: selectedTransactions.length,
                        separatorBuilder: ((context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade200),
                              ),
                            ),
                          );
                        }),
                        itemBuilder: ((context, index) {
                          final transaction = selectedTransactions[index];
                          return TransactionItemCard(
                            transaction: transaction,
                            onSettlePressed: _handeleOnSettlePressed,
                            onDeletePressed: _handleOnDeletePressed,
                          );
                        }),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TransactionItemCard extends StatelessWidget {
  final Transaction transaction;
  final void Function(Transaction transaction) onDeletePressed;
  final void Function(Transaction transaction) onSettlePressed;
  const TransactionItemCard({
    super.key,
    required this.transaction,
    required this.onDeletePressed,
    required this.onSettlePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      groupTag: '0',
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              onDeletePressed(transaction);
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          !transaction.isCompleted
              ? SlidableAction(
                  onPressed: (_) {
                    onSettlePressed(transaction);
                  },
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  icon: Icons.attach_money,
                  label: 'Settle',
                )
              : const SizedBox(),
        ],
      ),
      child: Container(
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
                      backgroundColor: Colors.grey.shade100,
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
      ),
    );
  }
}

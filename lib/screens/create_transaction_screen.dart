import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart' show GoRouter;
import 'package:intl/intl.dart' show DateFormat;

import '../../services/contact_service.dart';
import '../blocs/notification/notification_bloc.dart';
import '../blocs/transaction/transaction_bloc.dart';
import '../config/router.dart';
import '../models/contact/contact.dart';
import '../models/notification/notification.dart';
import '../models/transaction/transaction.dart';
import '../config/widgets/base_button.dart';
import '../config/widgets/base_date_picker_input.dart';
import '../config/widgets/base_drop_down.dart';
import '../config/widgets/base_number_input.dart';
import '../config/widgets/base_text_input.dart';
import '../config/widgets/side_drawer.dart';

class CreateTransactionScreen extends ConsumerStatefulWidget {
  const CreateTransactionScreen({super.key});

  @override
  ConsumerState<CreateTransactionScreen> createState() =>
      _CreateTransactionScreenState();
}

class _CreateTransactionScreenState
    extends ConsumerState<CreateTransactionScreen> {
  late final StreamSubscription<TransactionState> _subscription;
  late final TextEditingController _descriptionController;
  late final TextEditingController _amountController;
  late final TextEditingController _dueAtController;
  late LoanType _loanType;
  late Contact _contact;

  @override
  void initState() {
    _descriptionController = TextEditingController();
    _amountController = TextEditingController();
    _dueAtController = TextEditingController();
    _dueAtController.text =
        DateFormat('yyyy-MM-dd').format(DateTime.now()).toString();
    _loanType = LoanType.given;
    _contact = const Contact(id: '0', firstName: 'Anonymous');
    _subscription = context.read<TransactionBloc>().stream.listen((state) {
      state.whenOrNull(
        success: (flag) {
          if (flag == SuccessFlag.createdTransaction) {
            GoRouter.of(context).go(routeTransactions);
          }
        },
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  void _resetFields() {
    _descriptionController.clear();
    _amountController.clear();
    _dueAtController.text =
        DateFormat('yyyy-MM-dd').format(DateTime.now()).toString();
    _loanType = LoanType.given;
    _contact = const Contact(id: '0', firstName: 'Anonymous');
  }

  Future<void> _createTransaction() async {
    final description = _descriptionController.text.trim();
    final amountString = _amountController.text.trim();
    final dueAt = _dueAtController.text.trim();
    if (description.isEmpty) {
      context.read<NotificationBloc>().showErrorNotification(
            AppNotification.errorFieldRequired('Description'),
          );

      return;
    }
    if (amountString.isEmpty) {
      context.read<NotificationBloc>().showErrorNotification(
            AppNotification.errorFieldRequired('Amount'),
          );
      return;
    }
    if (dueAt.isEmpty) {
      context.read<NotificationBloc>().showErrorNotification(
            AppNotification.errorFieldRequired('Due Date'),
          );
      return;
    }
    final newTransaction = Transaction(
      id: '',
      description: description,
      amount: double.parse(amountString),
      loanType: _loanType,
      contact: _contact,
      createdAt: DateTime.now(),
      dueAt: DateTime.parse("$dueAt 00:00:00.000"),
      isCompleted: false,
    );
    context.read<TransactionBloc>().createTransaction(newTransaction);
    _resetFields();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Create Transaction'),
      ),
      drawer: const SideDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              StreamBuilder<List<Contact>>(
                stream: ref.watch(contactServiceProvider).contactsStream,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return const SizedBox();
                  }
                  final contacts = snapshot.requireData;
                  if (contacts.isNotEmpty) {
                    _contact = contacts.first;
                  }
                  return BaseDropDown<Contact>(
                    selectedItem: _contact,
                    items: contacts,
                    itemAsString: ((item) =>
                        '${item.firstName} ${item.lastName}'),
                    label: 'Contact',
                    onChanged: (value) {
                      _contact = value!;
                    },
                  );
                },
              ),
              const SizedBox(height: 10),
              BaseDropDown<LoanType>(
                selectedItem: _loanType,
                items: LoanType.values,
                itemAsString: ((item) => item.name),
                label: 'Loan type',
                onChanged: (value) {
                  _loanType = value!;
                },
              ),
              const SizedBox(height: 10),
              BaseTextInput(
                controller: _descriptionController,
                label: 'Description',
              ),
              const SizedBox(height: 10),
              BaseNumberInput(
                controller: _amountController,
                label: 'Amount',
                decimal: true,
              ),
              const SizedBox(height: 20),
              BaseDatePickerInput(
                controller: _dueAtController,
                label: 'Due date',
              ),
              const SizedBox(height: 20),
              BlocBuilder<TransactionBloc, TransactionState>(
                builder: (context, state) {
                  return BaseButton(
                    backgroundColor: Colors.indigo,
                    color: Colors.white,
                    label: 'Create',
                    onTap: _createTransaction,
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
    );
  }
}

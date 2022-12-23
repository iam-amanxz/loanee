import 'package:cloud_firestore/cloud_firestore.dart'
    show FirebaseFirestore, CollectionReference;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/transaction/transaction.dart';
import '../models/transaction_record/transaction_record.dart';

class TransactionService {
  final transactionsPath = 'transactions';
  final FirebaseFirestore _db;
  late final CollectionReference transactions;

  TransactionService(this._db) {
    transactions = _db.collection(transactionsPath);
  }

  Future<void> settleTransaction(
    Transaction transaction,
    TransactionRecord transactionRecord,
  ) async {
    final paidAmount = transaction.transactionRecords
        .fold(0.0, (previous, current) => previous + current.amount);
    final pendingAmount = transaction.amount - paidAmount;

    final documentSnapshot = transactions.doc(transaction.id);
    final updatedTransaction = transaction.copyWith(
      transactionRecords: [
        ...transaction.transactionRecords,
        transactionRecord,
      ],
      isCompleted: transactionRecord.amount == pendingAmount ? true : false,
    );
    await documentSnapshot.update(updatedTransaction.toJson());
  }

  Future<List<Transaction>> getTransactions() async {
    final querySnapshot =
        await transactions.orderBy('createdAt', descending: true).get();
    final transactionsList = querySnapshot.docs
        .map(
          (doc) => Transaction.fromJson(
            doc.data() as Map<String, Object?>,
          ),
        )
        .toList();
    return transactionsList;
  }

  Future<Transaction?> getTransaction(String id) async {
    final documentSnapshot = await transactions.doc(id).get();
    if (!documentSnapshot.exists) {
      return null;
    }
    final transaction = Transaction.fromJson(
      documentSnapshot.data() as Map<String, Object?>,
    );
    return transaction;
  }

  Future<void> deleteTransaction(Transaction transaction) async {
    final docRef = transactions.doc(transaction.id);
    await docRef.delete();
  }

  Future<Transaction> createTransaction(Transaction transaction) async {
    final docRef = transactions.doc();
    final transactionWithId = transaction.copyWith(id: docRef.id);
    await docRef.set(transactionWithId.toJson());
    final snapshot = await docRef.get();
    final data = snapshot.data() as Map<String, Object?>;
    return Transaction.fromJson(data);
  }

  Stream<Transaction> currentTransactionStream(String id) {
    return transactions.doc(id).snapshots().map(
          (doc) => Transaction.fromJson(
            doc.data() as Map<String, Object?>,
          ),
        );
  }

  Stream<List<Transaction>> get transactionsStream =>
      transactions.orderBy('createdAt', descending: true).snapshots().map(
            (snapshot) => snapshot.docs
                .map(
                  (doc) => Transaction.fromJson(
                    doc.data() as Map<String, Object?>,
                  ),
                )
                .toList(),
          );
}

final transactionServiceProvider = Provider<TransactionService>(((ref) {
  return TransactionService(FirebaseFirestore.instance);
}));

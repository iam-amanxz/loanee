import 'package:go_router/go_router.dart' show GoRouter, GoRoute;

import '../../screens/contacts_screen.dart';
import '../../screens/create_contact_screen.dart';
import '../main.dart';
import '../screens/create_transaction_screen.dart';
import '../screens/settle_transaction_screen.dart';
import '../screens/transaction_screen.dart';

const routeContacts = '/contacts';
const routeContactCreate = '/contacts/create';
const routeTransactions = '/transactions';
const routeTransactionCreate = '/transactions/create';
const routeTransactionSettle = '/transactions/settle/:transactionId';
const routeTransactionSettleName = 'settleTransaction';

final router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: routeTransactions,
  routes: [
    GoRoute(
      path: routeContacts,
      builder: (context, state) => const ContactsScreen(),
    ),
    GoRoute(
      path: routeContactCreate,
      builder: (context, state) => const CreateContactScreen(),
    ),
    GoRoute(
      path: routeTransactions,
      builder: (context, state) => const TransactionsScreen(),
    ),
    GoRoute(
      path: routeTransactionCreate,
      builder: (context, state) => const CreateTransactionScreen(),
    ),
    GoRoute(
      path: routeTransactionSettle,
      name: routeTransactionSettleName,
      builder: (context, state) => SettleTransactionScreen(
        transactionId: state.params['transactionId']!,
      ),
    ),
  ],
);

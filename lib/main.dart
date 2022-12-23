import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../blocs/contact/contact_bloc.dart';
import '../services/contact_service.dart';
import 'blocs/notification/notification_bloc.dart';
import 'blocs/transaction/transaction_bloc.dart';
import 'config/firebase_options.dart';
import 'config/router.dart';
import 'services/notification_service.dart';
import 'services/transaction_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(child: App()),
  );
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotificationBloc(
            notificationService: NotificationService(),
          ),
        ),
        BlocProvider(
          create: (context) => ContactBloc(
            contactService: ref.read(contactServiceProvider),
            ref: ref,
            notificationBloc: context.read<NotificationBloc>(),
          ),
        ),
        BlocProvider(
          create: (context) => TransactionBloc(
            transactionService: ref.read(transactionServiceProvider),
            ref: ref,
            notificationBloc: context.read<NotificationBloc>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        scaffoldMessengerKey: rootScaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
        title: 'Loanee',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          textTheme: GoogleFonts.robotoTextTheme(),
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
        routerConfig: router,
      ),
    );
  }
}

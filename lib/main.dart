//  //   ///
//  Import LIBRARIES FILES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import LIBRARIES
import 'core_src/application_svcs/routes/app_routes.dart';
//  //   ///

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = AppRoutes.createRouter(ref);
    return MaterialApp.router(
      title: 'Flutter Onboarding',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      // home: const HomePage(),
      // routerConfig: const MaterialAppRouter().router,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}



//  //   ///
//  Import LIBRARIES FILES
//  Import LIBRARIES
//  //   ///





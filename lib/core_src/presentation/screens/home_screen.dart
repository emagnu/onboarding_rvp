//  //   ///
//  Import LIBRARIES FILES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import LIBRARIES
//  //   ///

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Home Screee!\nAccess the app from here.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

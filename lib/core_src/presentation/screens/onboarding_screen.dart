//  //   ///
//  Import LIBRARIES FILES
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//  Import LIBRARIES
//  //   ///

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onbording Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // await ref.read(onboardingNotifierProvider.notifier).completeOnboarding();
            context.go('/home');
          },
          child: const Text('Complete Onboarding'),
        ),
      ),
    );
  }
}

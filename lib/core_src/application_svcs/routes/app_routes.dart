//  //   ///
//  Import LIBRARIES FILES
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
//  Import LIBRARIES
import '../../presentation/providers/onboarding_provider.dart';
import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/onboarding_screen.dart';
//  //   ///

class AppRoutes {
  static GoRouter createRouter(WidgetRef ref) {
    final isOnboardingCompleted = ref.watch(onboardingNotifierProvider);

    return GoRouter(
      initialLocation: isOnboardingCompleted ? '/home' : '/onboarding',
      routes: <RouteBase>[
        GoRoute(
          path: '/onboarding',
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import '../presentation/splash/splash_screen.dart';
// import '../presentation/auth/login_screen.dart';
// import '../presentation/home/home_shell.dart';
// import '../presentation/assessment/assessment_detail.dart';
// import 'theme.dart';
// import '../presentation/auth/auth_controller.dart';

// class AllyCareApp extends ConsumerWidget {
//   const AllyCareApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final auth = ref.watch(authNotifierProvider);
//     final router = GoRouter(
//       initialLocation: '/',
//       routes: [
//         GoRoute(path: '/', builder: (_, __) => const SplashScreen()),
//         GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
//         ShellRoute(
//           builder: (context, state, child) => HomeShell(child: child),
//           routes: [
//             GoRoute(path: '/home', builder: (_, __) => const HomeShell()),
//             GoRoute(path: '/assessment/:id', builder: (ctx, state) {
//               final id = state.params['id']!;
//               return AssessmentDetailScreen(assessmentId: id);
//             }),
//           ],
//         ),
//       ],
//       redirect: (context, state) {
//         // while loading -> stay on splash
//         if (auth.isLoading) return null;
//         final loggedIn = auth.userId != null;
//         final loggingIn = state.subloc == '/login';
//         if (!loggedIn && !loggingIn) return '/login';
//         if (loggedIn && loggingIn) return '/home';
//         return null;
//       },
//       debugLogDiagnostics: true,
//     );

//     return MaterialApp.router(
//       title: 'AllyCare',
//       theme: AllyCareTheme.light(),
//       routerConfig: router,
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../presentation/splash/splash_screen.dart';
import '../presentation/auth/login_screen.dart';
import '../presentation/home/home_shell.dart';
import '../presentation/assessment/assessment_detail.dart';
import 'theme.dart';
import '../presentation/auth/auth_controller.dart';

class AllyCareApp extends ConsumerWidget {
  const AllyCareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authNotifierProvider);

    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(path: '/', builder: (_, __) => const SplashScreen()),
        GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
        ShellRoute(
          builder: (context, state, child) => HomeShell(child: child),
          routes: [
            GoRoute(path: '/home', builder: (_, __) => const HomeShell()),
            GoRoute(
              path: '/assessment/:id',
              builder: (ctx, state) {
                final id = state.pathParameters['id']!; // ✅ updated
                return AssessmentDetailScreen(assessmentId: id);
              },
            ),
          ],
        ),
      ],
      redirect: (context, state) {
        // while loading -> stay on splash
        if (auth.isLoading) return null;

        final loggedIn = auth.userId != null;
        final loggingIn = state.uri.path == '/login'; // ✅ updated

        if (!loggedIn && !loggingIn) return '/login';
        if (loggedIn && loggingIn) return '/home';
        return null;
      },
      debugLogDiagnostics: true,
    );

    return MaterialApp.router(
      title: 'AllyCare',
      theme: AllyCareTheme.light(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

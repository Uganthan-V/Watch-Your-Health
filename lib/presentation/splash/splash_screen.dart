// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../auth/auth_controller.dart';
// import 'package:go_router/go_router.dart';

// class SplashScreen extends ConsumerWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final auth = ref.watch(authNotifierProvider);
//     return Scaffold(
//       body: Center(
//         child: auth.isLoading
//             ? Column(mainAxisSize: MainAxisSize.min, children: const [
//                 CircularProgressIndicator(),
//                 SizedBox(height: 12),
//                 Text('Checking authentication...')
//               ])
//             : ElevatedButton(
//                 onPressed: () => GoRouter.of(context).go(auth.userId == null ? '/login' : '/home'),
//                 child: Text(auth.userId == null ? 'Sign in' : 'Continue home'),
//               ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../auth/auth_controller.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authNotifierProvider);

    // Trigger navigation after build if not loading and userId exists
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!auth.isLoading && auth.userId != null) {
        GoRouter.of(context).go('/home');
      } else if (!auth.isLoading && auth.userId == null) {
        GoRouter.of(context).go('/login');
      }
    });

    return Scaffold(
      body: Center(
        child: auth.isLoading
            ? Column(mainAxisSize: MainAxisSize.min, children: const [
                CircularProgressIndicator(),
                SizedBox(height: 12),
                Text('Checking authentication...')
              ])
            : const SizedBox.shrink(), // Replace button with empty widget
      ),
    );
  }
}
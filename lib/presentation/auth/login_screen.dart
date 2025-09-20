// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // // // // import 'auth_controller.dart';
// // // // // import 'package:go_router/go_router.dart';

// // // // // class LoginScreen extends ConsumerStatefulWidget {
// // // // //   const LoginScreen({Key? key}) : super(key: key);
// // // // //   @override
// // // // //   ConsumerState<LoginScreen> createState() => _LoginScreenState();
// // // // // }

// // // // // class _LoginScreenState extends ConsumerState<LoginScreen> {
// // // // //   final _email = TextEditingController();
// // // // //   final _pass = TextEditingController();
// // // // //   bool _loading = false;
// // // // //   String? _error;

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final authNotifier = ref.read(authNotifierProvider.notifier);
// // // // //     return Scaffold(
// // // // //       body: SafeArea(
// // // // //         child: Padding(
// // // // //           padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 36.0),
// // // // //           child: Column(
// // // // //             children: [
// // // // //               const SizedBox(height: 8),
// // // // //               const Text('AllyCare', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
// // // // //               const SizedBox(height: 32),
// // // // //               TextField(controller: _email, decoration: const InputDecoration(labelText: 'Email')),
// // // // //               const SizedBox(height: 12),
// // // // //               TextField(controller: _pass, obscureText: true, decoration: const InputDecoration(labelText: 'Password')),
// // // // //               const SizedBox(height: 20),
// // // // //               if (_error != null) Text(_error!, style: const TextStyle(color: Colors.red)),
// // // // //               const SizedBox(height: 8),
// // // // //               ElevatedButton(
// // // // //                 onPressed: _loading ? null : () async {
// // // // //                   setState(() { _loading = true; _error = null; });
// // // // //                   try {
// // // // //                     await authNotifier.signIn(_email.text.trim(), _pass.text.trim());
// // // // //                     GoRouter.of(context).go('/home');
// // // // //                   } catch (e) {
// // // // //                     setState(() { _error = e.toString(); });
// // // // //                   } finally {
// // // // //                     setState(() { _loading = false; });
// // // // //                   }
// // // // //                 },
// // // // //                 child: _loading ? const CircularProgressIndicator(color: Colors.white) : const Text('Continue'),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }


// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // // // import 'package:flutter_svg/flutter_svg.dart';
// // // // import 'package:go_router/go_router.dart';
// // // // import 'auth_controller.dart';

// // // // class LoginScreen extends ConsumerStatefulWidget {
// // // //   const LoginScreen({Key? key}) : super(key: key);

// // // //   @override
// // // //   ConsumerState<LoginScreen> createState() => _LoginScreenState();
// // // // }

// // // // class _LoginScreenState extends ConsumerState<LoginScreen> {
// // // //   final _email = TextEditingController();
// // // //   final _pass = TextEditingController();
// // // //   bool _loading = false;
// // // //   String? _error;

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final authNotifier = ref.read(authNotifierProvider.notifier);

// // // //     return Scaffold(
// // // //       body: SafeArea(
// // // //         child: Container(
// // // //           color: Colors.white,
// // // //           child: Column(
// // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // //             children: [
// // // //               /// Scrollable content
// // // //               Expanded(
// // // //                 child: SingleChildScrollView(
// // // //                   child: Column(
// // // //                     children: [
// // // //                       const SizedBox(height: 40),

// // // //                       /// Logo
// // // //                       Center(
// // // //                         child: SvgPicture.asset(
// // // //                           'assets/login_page/logo.svg',
// // // //                           width: 130,
// // // //                           height: 40,
// // // //                         ),
// // // //                       ),

// // // //                       const SizedBox(height: 8),
// // // //                       const Text(
// // // //                         "Login or create your account",
// // // //                         style: TextStyle(
// // // //                           fontSize: 14,
// // // //                           color: Color(0xFF727A87),
// // // //                         ),
// // // //                       ),

// // // //                       const SizedBox(height: 50),

// // // //                       /// Email field
// // // //                       Padding(
// // // //                         padding: const EdgeInsets.symmetric(horizontal: 36),
// // // //                         child: Container(
// // // //                           decoration: BoxDecoration(
// // // //                             border: Border.all(color: const Color(0xFFE8E9ED)),
// // // //                             borderRadius: BorderRadius.circular(20),
// // // //                             color: Colors.white,
// // // //                           ),
// // // //                           padding: const EdgeInsets.symmetric(
// // // //                               horizontal: 20, vertical: 4),
// // // //                           child: TextField(
// // // //                             controller: _email,
// // // //                             style: const TextStyle(
// // // //                                 fontSize: 14, color: Color(0xFF313131)),
// // // //                             decoration: const InputDecoration(
// // // //                               hintText: "Enter your email",
// // // //                               border: InputBorder.none,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       ),

// // // //                       const SizedBox(height: 16),

// // // //                       /// Password field
// // // //                       Padding(
// // // //                         padding: const EdgeInsets.symmetric(horizontal: 36),
// // // //                         child: Container(
// // // //                           decoration: BoxDecoration(
// // // //                             border: Border.all(color: const Color(0xFFE8E9ED)),
// // // //                             borderRadius: BorderRadius.circular(20),
// // // //                             color: Colors.white,
// // // //                           ),
// // // //                           padding: const EdgeInsets.symmetric(
// // // //                               horizontal: 20, vertical: 4),
// // // //                           child: TextField(
// // // //                             controller: _pass,
// // // //                             obscureText: true,
// // // //                             style: const TextStyle(
// // // //                                 fontSize: 14, color: Color(0xFF313131)),
// // // //                             decoration: const InputDecoration(
// // // //                               hintText: "Enter your password",
// // // //                               border: InputBorder.none,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       ),

// // // //                       const SizedBox(height: 20),

// // // //                       if (_error != null)
// // // //                         Padding(
// // // //                           padding: const EdgeInsets.symmetric(horizontal: 36),
// // // //                           child: Text(
// // // //                             _error!,
// // // //                             style: const TextStyle(color: Colors.red),
// // // //                           ),
// // // //                         ),

// // // //                       const SizedBox(height: 26),

// // // //                       /// Continue button
// // // //                       InkWell(
// // // //                         onTap: _loading
// // // //                             ? null
// // // //                             : () async {
// // // //                                 setState(() {
// // // //                                   _loading = true;
// // // //                                   _error = null;
// // // //                                 });
// // // //                                 try {
// // // //                                   await authNotifier.signIn(
// // // //                                     _email.text.trim(),
// // // //                                     _pass.text.trim(),
// // // //                                   );
// // // //                                   GoRouter.of(context).go('/home');
// // // //                                 } catch (e) {
// // // //                                   setState(() {
// // // //                                     _error = e.toString();
// // // //                                   });
// // // //                                 } finally {
// // // //                                   setState(() {
// // // //                                     _loading = false;
// // // //                                   });
// // // //                                 }
// // // //                               },
// // // //                         child: Container(
// // // //                           decoration: BoxDecoration(
// // // //                             borderRadius: BorderRadius.circular(28),
// // // //                             color: const Color(0xFF255FD5),
// // // //                             boxShadow: const [
// // // //                               BoxShadow(
// // // //                                 color: Color(0x26000000),
// // // //                                 blurRadius: 10,
// // // //                                 offset: Offset(0, 2),
// // // //                               ),
// // // //                             ],
// // // //                           ),
// // // //                           padding: const EdgeInsets.symmetric(
// // // //                               vertical: 15, horizontal: 41),
// // // //                           child: Row(
// // // //                             mainAxisSize: MainAxisSize.min,
// // // //                             children: [
// // // //                               _loading
// // // //                                   ? const SizedBox(
// // // //                                       width: 20,
// // // //                                       height: 20,
// // // //                                       child: CircularProgressIndicator(
// // // //                                         color: Colors.white,
// // // //                                         strokeWidth: 2,
// // // //                                       ),
// // // //                                     )
// // // //                                   : const Text(
// // // //                                       "Continue",
// // // //                                       style: TextStyle(
// // // //                                         color: Colors.white,
// // // //                                         fontSize: 17,
// // // //                                         fontWeight: FontWeight.bold,
// // // //                                       ),
// // // //                                     ),
// // // //                               const SizedBox(width: 12),
// // // //                               Icon(Icons.keyboard_arrow_right,color: Colors.white,)
// // // //                             ],
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               ),

// // // //               /// Bottom section with wave + support
// // // //               Stack(
// // // //                 alignment: Alignment.bottomCenter,
// // // //                 children: [
// // // //                   SvgPicture.asset(
// // // //                     'assets/login_page/bottom_wave.svg',
// // // //                     width: double.infinity,
// // // //                     fit: BoxFit.cover,
// // // //                   ),
// // // //                   Padding(
// // // //                     padding: const EdgeInsets.only(bottom: 20),
// // // //                     child: Row(
// // // //                       mainAxisAlignment: MainAxisAlignment.center,
// // // //                       children: [
// // // //                         SvgPicture.asset(
// // // //                           'assets/login_page/support.svg',
// // // //                           width: 22,
// // // //                           height: 22,
// // // //                         ),
// // // //                         const SizedBox(width: 8),
// // // //                         const Text(
// // // //                           "Support",
// // // //                           style: TextStyle(
// // // //                             color: Colors.white,
// // // //                             fontSize: 16,
// // // //                             fontWeight: FontWeight.bold,
// // // //                           ),
// // // //                         )
// // // //                       ],
// // // //                     ),
// // // //                   )
// // // //                 ],
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }


// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // // import 'package:flutter_svg/flutter_svg.dart';
// // // import 'package:go_router/go_router.dart';
// // // import 'auth_controller.dart';

// // // class LoginScreen extends ConsumerStatefulWidget {
// // //   const LoginScreen({Key? key}) : super(key: key);

// // //   @override
// // //   ConsumerState<LoginScreen> createState() => _LoginScreenState();
// // // }

// // // class _LoginScreenState extends ConsumerState<LoginScreen> {
// // //   final _email = TextEditingController();
// // //   final _pass = TextEditingController();
// // //   bool _loading = false;
// // //   String? _error;
// // //   bool _showPasswordField = false;
// // //   String? _validatedEmail;

// // //   // Basic email validation regex
// // //   final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

// // //   @override
// // //   void dispose() {
// // //     _email.dispose();
// // //     _pass.dispose();
// // //     super.dispose();
// // //   }

// // //   void _handleContinue() {
// // //     if (!_showPasswordField) {
// // //       // Validate email and switch to password field
// // //       final email = _email.text.trim();
// // //       if (_emailRegex.hasMatch(email)) {
// // //         setState(() {
// // //           _validatedEmail = email;
// // //           _showPasswordField = true;
// // //           _error = null;
// // //         });
// // //       } else {
// // //         setState(() {
// // //           _error = "Please enter a valid email address";
// // //         });
// // //       }
// // //     } else {
// // //       // Perform sign-in
// // //       if (_validatedEmail != null && _pass.text.trim().isNotEmpty) {
// // //         _performSignIn();
// // //       } else {
// // //         setState(() {
// // //           _error = "Please enter a password";
// // //         });
// // //       }
// // //     }
// // //   }

// // //   void _performSignIn() async {
// // //     setState(() {
// // //       _loading = true;
// // //       _error = null;
// // //     });
// // //     try {
// // //       await ref.read(authNotifierProvider.notifier).signIn(
// // //             _validatedEmail!,
// // //             _pass.text.trim(),
// // //           );
// // //       GoRouter.of(context).go('/home');
// // //     } catch (e) {
// // //       setState(() {
// // //         _error = e.toString();
// // //         _showPasswordField = false;
// // //         _pass.clear();
// // //       });
// // //     } finally {
// // //       setState(() {
// // //         _loading = false;
// // //       });
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: SafeArea(
// // //         child: Container(
// // //           color: Colors.white,
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               /// Scrollable content
// // //               Expanded(
// // //                 child: SingleChildScrollView(
// // //                   child: Column(
// // //                     children: [
// // //                       const SizedBox(height: 40),

// // //                       /// Logo
// // //                       Center(
// // //                         child: SvgPicture.asset(
// // //                           'assets/login_page/logo.svg',
// // //                           width: 130,
// // //                           height: 40,
// // //                         ),
// // //                       ),

// // //                       const SizedBox(height: 8),
// // //                       const Text(
// // //                         "Login or create your account",
// // //                         style: TextStyle(
// // //                           fontSize: 14,
// // //                           color: Color(0xFF727A87),
// // //                         ),
// // //                       ),

// // //                       const SizedBox(height: 50),

// // //                       /// Email or Password field
// // //                       Padding(
// // //                         padding: const EdgeInsets.symmetric(horizontal: 36),
// // //                         child: Container(
// // //                           decoration: BoxDecoration(
// // //                             border: Border.all(color: const Color(0xFFE8E9ED)),
// // //                             borderRadius: BorderRadius.circular(20),
// // //                             color: Colors.white,
// // //                           ),
// // //                           padding: const EdgeInsets.symmetric(
// // //                               horizontal: 20, vertical: 4),
// // //                           child: Row(
// // //                             children: [
// // //                               Expanded(
// // //                                 child: _showPasswordField
// // //                                     ? TextField(
// // //                                         controller: _pass,
// // //                                         obscureText: true,
// // //                                         style: const TextStyle(
// // //                                             fontSize: 14,
// // //                                             color: Color(0xFF313131)),
// // //                                         decoration: const InputDecoration(
// // //                                           hintText: "Enter your password",
// // //                                           border: InputBorder.none,
// // //                                         ),
// // //                                       )
// // //                                     : TextField(
// // //                                         controller: _email,
// // //                                         style: const TextStyle(
// // //                                             fontSize: 14,
// // //                                             color: Color(0xFF313131)),
// // //                                         decoration: const InputDecoration(
// // //                                           hintText: "Enter your email",
// // //                                           border: InputBorder.none,
// // //                                         ),
// // //                                       ),
// // //                               ),
// // //                               if (_showPasswordField)
// // //                                 IconButton(
// // //                                   icon: const Icon(Icons.arrow_back),
// // //                                   onPressed: () {
// // //                                     setState(() {
// // //                                       _showPasswordField = false;
// // //                                       _pass.clear();
// // //                                       _error = null;
// // //                                     });
// // //                                   },
// // //                                 ),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       ),

// // //                       const SizedBox(height: 20),

// // //                       if (_error != null)
// // //                         Padding(
// // //                           padding: const EdgeInsets.symmetric(horizontal: 36),
// // //                           child: Text(
// // //                             _error!,
// // //                             style: const TextStyle(color: Colors.red),
// // //                           ),
// // //                         ),

// // //                       const SizedBox(height: 26),

// // //                       /// Continue button
// // //                       InkWell(
// // //                         onTap: _loading ? null : _handleContinue,
// // //                         child: Container(
// // //                           decoration: BoxDecoration(
// // //                             borderRadius: BorderRadius.circular(28),
// // //                             color: const Color(0xFF255FD5),
// // //                             boxShadow: const [
// // //                               BoxShadow(
// // //                                 color: Color(0x26000000),
// // //                                 blurRadius: 10,
// // //                                 offset: Offset(0, 2),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                           padding: const EdgeInsets.symmetric(
// // //                               vertical: 15, horizontal: 41),
// // //                           child: Row(
// // //                             mainAxisSize: MainAxisSize.min,
// // //                             children: [
// // //                               _loading
// // //                                   ? const SizedBox(
// // //                                       width: 20,
// // //                                       height: 20,
// // //                                       child: CircularProgressIndicator(
// // //                                         color: Colors.white,
// // //                                         strokeWidth: 2,
// // //                                       ),
// // //                                     )
// // //                                   : const Text(
// // //                                       "Continue",
// // //                                       style: TextStyle(
// // //                                         color: Colors.white,
// // //                                         fontSize: 17,
// // //                                         fontWeight: FontWeight.bold,
// // //                                       ),
// // //                                     ),
// // //                               const SizedBox(width: 12),
// // //                               const Icon(
// // //                                 Icons.keyboard_arrow_right,
// // //                                 color: Colors.white,
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               ),

// // //               /// Bottom section with wave + support
// // //               Stack(
// // //                 alignment: Alignment.bottomCenter,
// // //                 children: [
// // //                   SvgPicture.asset(
// // //                     'assets/login_page/bottom_wave.svg',
// // //                     width: double.infinity,
// // //                     fit: BoxFit.cover,
// // //                   ),
// // //                   Padding(
// // //                     padding: const EdgeInsets.only(bottom: 20),
// // //                     child: Row(
// // //                       mainAxisAlignment: MainAxisAlignment.center,
// // //                       children: [
// // //                         SvgPicture.asset(
// // //                           'assets/login_page/support.svg',
// // //                           width: 22,
// // //                           height: 22,
// // //                         ),
// // //                         const SizedBox(width: 8),
// // //                         const Text(
// // //                           "Support",
// // //                           style: TextStyle(
// // //                             color: Colors.white,
// // //                             fontSize: 16,
// // //                             fontWeight: FontWeight.bold,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:go_router/go_router.dart';
// // import 'auth_controller.dart';

// // class LoginScreen extends ConsumerStatefulWidget {
// //   const LoginScreen({Key? key}) : super(key: key);

// //   @override
// //   ConsumerState<LoginScreen> createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends ConsumerState<LoginScreen> {
// //   final _email = TextEditingController();
// //   final _pass = TextEditingController();
// //   bool _loading = false;
// //   String? _error;
// //   bool _showPasswordField = false;
// //   String? _validatedEmail;

// //   // Basic email validation regex
// //   final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

// //   @override
// //   void dispose() {
// //     _email.dispose();
// //     _pass.dispose();
// //     super.dispose();
// //   }

// //   void _handleContinue() {
// //     if (!_showPasswordField) {
// //       // Validate email and switch to password field
// //       final email = _email.text.trim();
// //       if (_emailRegex.hasMatch(email)) {
// //         setState(() {
// //           _validatedEmail = email;
// //           _showPasswordField = true;
// //           _error = null;
// //         });
// //       } else {
// //         setState(() {
// //           _error = "Please enter a valid email address";
// //         });
// //       }
// //     } else {
// //       // Perform sign-in
// //       if (_validatedEmail != null && _pass.text.trim().isNotEmpty) {
// //         _performSignIn();
// //       } else {
// //         setState(() {
// //           _error = "Please enter a password";
// //         });
// //       }
// //     }
// //   }

// //   void _performSignIn() async {
// //     setState(() {
// //       _loading = true;
// //       _error = null;
// //     });
// //     try {
// //       await ref.read(authNotifierProvider.notifier).signIn(
// //             _validatedEmail!,
// //             _pass.text.trim(),
// //           );
// //       GoRouter.of(context).go('/home');
// //     } catch (e) {
// //       setState(() {
// //         _error = e.toString();
// //         _showPasswordField = false;
// //         _pass.clear();
// //       });
// //     } finally {
// //       setState(() {
// //         _loading = false;
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: Container(
// //           color: Colors.white,
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               /// Scrollable content
// //               Expanded(
// //                 child: SingleChildScrollView(
// //                   child: Column(
// //                     children: [
// //                       const SizedBox(height: 40),

// //                       /// Logo
// //                       Center(
// //                         child: SvgPicture.asset(
// //                           'assets/login_page/logo.svg',
// //                           width: 130,
// //                           height: 40,
// //                           placeholderBuilder: (context) => const SizedBox(
// //                             width: 130,
// //                             height: 40,
// //                             child: Placeholder(),
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 8),
// //                       const Text(
// //                         "Login or create your account",
// //                         style: TextStyle(
// //                           fontSize: 14,
// //                           color: Color(0xFF727A87),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 50),

// //                       /// Email or Password field
// //                       Padding(
// //                         padding: const EdgeInsets.symmetric(horizontal: 36),
// //                         child: Container(
// //                           decoration: BoxDecoration(
// //                             border: Border.all(color: const Color(0xFFE8E9ED)),
// //                             borderRadius: BorderRadius.circular(20),
// //                             color: Colors.white,
// //                           ),
// //                           padding: const EdgeInsets.symmetric(
// //                               horizontal: 20, vertical: 4),
// //                           child: Row(
// //                             children: [
// //                               Expanded(
// //                                 child: _showPasswordField
// //                                     ? TextField(
// //                                         controller: _pass,
// //                                         obscureText: true,
// //                                         style: const TextStyle(
// //                                             fontSize: 14,
// //                                             color: Color(0xFF313131)),
// //                                         decoration: const InputDecoration(
// //                                           hintText: "Enter your password",
// //                                           border: InputBorder.none,
// //                                         ),
// //                                       )
// //                                     : TextField(
// //                                         controller: _email,
// //                                         style: const TextStyle(
// //                                             fontSize: 14,
// //                                             color: Color(0xFF313131)),
// //                                         decoration: const InputDecoration(
// //                                           hintText: "Enter your email",
// //                                           border: InputBorder.none,
// //                                         ),
// //                                       ),
// //                               ),
// //                               if (_showPasswordField)
// //                                 IconButton(
// //                                   icon: const Icon(Icons.arrow_back),
// //                                   onPressed: () {
// //                                     setState(() {
// //                                       _showPasswordField = false;
// //                                       _pass.clear();
// //                                       _error = null;
// //                                     });
// //                                   },
// //                                 ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),

// //                       const SizedBox(height: 20),

// //                       if (_error != null)
// //                         Padding(
// //                           padding: const EdgeInsets.symmetric(horizontal: 36),
// //                           child: Text(
// //                             _error!,
// //                             style: const TextStyle(color: Colors.red),
// //                           ),
// //                         ),

// //                       const SizedBox(height: 26),

// //                       /// Continue button
// //                       InkWell(
// //                         onTap: _loading ? null : _handleContinue,
// //                         child: Container(
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(28),
// //                             color: const Color(0xFF255FD5),
// //                             boxShadow: const [
// //                               BoxShadow(
// //                                 color: Color(0x26000000),
// //                                 blurRadius: 10,
// //                                 offset: Offset(0, 2),
// //                               ),
// //                             ],
// //                           ),
// //                           padding: const EdgeInsets.symmetric(
// //                               vertical: 15, horizontal: 41),
// //                           child: Row(
// //                             mainAxisSize: MainAxisSize.min,
// //                             children: [
// //                               _loading
// //                                   ? const SizedBox(
// //                                       width: 20,
// //                                       height: 20,
// //                                       child: CircularProgressIndicator(
// //                                         color: Colors.white,
// //                                         strokeWidth: 2,
// //                                       ),
// //                                     )
// //                                   : const Text(
// //                                       "Continue",
// //                                       style: TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: 17,
// //                                         fontWeight: FontWeight.bold,
// //                                       ),
// //                                     ),
// //                               const SizedBox(width: 12),
// //                               const Icon(
// //                                 Icons.keyboard_arrow_right,
// //                                 color: Colors.white,
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),

// //               /// Bottom section with wave + support
// //               SizedBox(
// //                 height: 300, // Match the SVG height from viewBox
// //                 child: Stack(
// //                   children: [
// //                     SvgPicture.asset(
// //                       'assets/login_page/bottom_wave.svg',
// //                       width: double.infinity,
// //                       fit: BoxFit.fitWidth,
// //                       placeholderBuilder: (context) => const SizedBox(
// //                         width: double.infinity,
// //                         height: 245,
// //                         child: Placeholder(),
// //                       ),
// //                     ),
// //                     Positioned(
// //                       bottom: 20,
// //                       left: 0,
// //                       right: 0,
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           SvgPicture.asset(
// //                             'assets/login_page/support.svg',
// //                             width: 22,
// //                             height: 22,
// //                             color: Colors.white, // Ensure visibility if SVG is not white
// //                             placeholderBuilder: (context) => const SizedBox(
// //                               width: 22,
// //                               height: 22,
// //                               child: Placeholder(),
// //                             ),
// //                           ),
// //                           const SizedBox(width: 8),
// //                           const Text(
// //                             "Support",
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: 16,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';
// import 'auth_controller.dart';

// class LoginScreen extends ConsumerStatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   ConsumerState<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends ConsumerState<LoginScreen> {
//   final _email = TextEditingController();
//   final _pass = TextEditingController();
//   bool _loading = false;
//   String? _error;
//   bool _showPasswordField = false;
//   String? _validatedEmail;

//   // Basic email validation regex
//   final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

//   @override
//   void dispose() {
//     _email.dispose();
//     _pass.dispose();
//     super.dispose();
//   }

//   void _handleContinue() {
//     if (!_showPasswordField) {
//       // Validate email and switch to password field
//       final email = _email.text.trim();
//       if (_emailRegex.hasMatch(email)) {
//         setState(() {
//           _validatedEmail = email;
//           _showPasswordField = true;
//           _error = null;
//         });
//       } else {
//         setState(() {
//           _error = "Please enter a valid email address";
//         });
//       }
//     } else {
//       // Perform sign-in
//       if (_validatedEmail != null && _pass.text.trim().isNotEmpty) {
//         _performSignIn();
//       } else {
//         setState(() {
//           _error = "Please enter a password";
//         });
//       }
//     }
//   }

//   void _performSignIn() async {
//     setState(() {
//       _loading = true;
//       _error = null;
//     });
//     try {
//       await ref.read(authNotifierProvider.notifier).signIn(
//             _validatedEmail!,
//             _pass.text.trim(),
//           );
//       GoRouter.of(context).go('/home');
//     } catch (e) {
//       setState(() {
//         _error = e.toString();
//         _showPasswordField = false;
//         _pass.clear();
//       });
//     } finally {
//       setState(() {
//         _loading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           color: Colors.white,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               /// Scrollable content
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       const SizedBox(height: 150),

//                       /// Logo
//                       Center(
//                         child: SvgPicture.asset(
//                           'assets/login_page/logo.svg',
//                           width: 130,
//                           height: 40,
//                           placeholderBuilder: (context) => const SizedBox(
//                             width: 130,
//                             height: 40,
//                             child: Placeholder(),
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 8),
//                       const Text(
//                         "Login or create your account",
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Color(0xFF727A87),
//                         ),
//                       ),

//                       const SizedBox(height: 50),

//                       /// Email or Password field
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 36),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(color: const Color(0xFFE8E9ED)),
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.white,
//                           ),
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 4),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: _showPasswordField
//                                     ? TextField(
//                                         controller: _pass,
//                                         obscureText: true,
//                                         style: const TextStyle(
//                                             fontSize: 14,
//                                             color: Color(0xFF313131)),
//                                         decoration: const InputDecoration(
//                                           hintText: "Enter your password",
//                                           border: InputBorder.none,
//                                         ),
//                                       )
//                                     : TextField(
//                                         controller: _email,
//                                         style: const TextStyle(
//                                             fontSize: 14,
//                                             color: Color(0xFF313131)),
//                                         decoration: const InputDecoration(
//                                           hintText: "Enter your email",
//                                           border: InputBorder.none,
//                                         ),
//                                       ),
//                               ),
//                               if (_showPasswordField)
//                                 IconButton(
//                                   icon: const Icon(Icons.arrow_back),
//                                   onPressed: () {
//                                     setState(() {
//                                       _showPasswordField = false;
//                                       _pass.clear();
//                                       _error = null;
//                                     });
//                                   },
//                                 ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       const SizedBox(height: 20),

//                       if (_error != null)
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 36),
//                           child: Text(
//                             _error!,
//                             style: const TextStyle(color: Colors.red),
//                           ),
//                         ),

//                       const SizedBox(height: 26),

//                       /// Continue button
//                       InkWell(
//                         onTap: _loading ? null : _handleContinue,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(28),
//                             color: const Color(0xFF255FD5),
//                             boxShadow: const [
//                               BoxShadow(
//                                 color: Color(0x26000000),
//                                 blurRadius: 10,
//                                 offset: Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 15, horizontal: 41),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               _loading
//                                   ? const SizedBox(
//                                       width: 20,
//                                       height: 20,
//                                       child: CircularProgressIndicator(
//                                         color: Colors.white,
//                                         strokeWidth: 2,
//                                       ),
//                                     )
//                                   : const Text(
//                                       "Continue",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 17,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                               const SizedBox(width: 12),
//                               const Icon(
//                                 Icons.keyboard_arrow_right,
//                                 color: Colors.white,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               /// Bottom section with wave + support
//               SizedBox(
//                 height: 200, // Match the SVG height from viewBox
                
//                 child: Stack(
//                   alignment: Alignment.topCenter, // Align children to the top
//                   clipBehavior: Clip.none, // Allow overflow beyond the container
//                   children: [
//                     SvgPicture.asset(
//                       'assets/login_page/bottom_wave.svg',
//                       width: double.infinity,
//                       fit: BoxFit.fitWidth,
//                       alignment: Alignment.topCenter, // Anchor SVG to the top
//                       placeholderBuilder: (context) => const SizedBox(
//                         width: double.infinity,
//                         height: 245,
//                         child: Placeholder(),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 20,
//                       left: 0,
//                       right: 0,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SvgPicture.asset(
//                             'assets/login_page/support.svg',
//                             width: 22,
//                             height: 22,
//                             color: Colors.white, // Ensure visibility if SVG is not white
//                             placeholderBuilder: (context) => const SizedBox(
//                               width: 22,
//                               height: 22,
//                               child: Placeholder(),
//                             ),
//                           ),
//                           const SizedBox(width: 8),
//                           const Text(
//                             "Support",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'auth_controller.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _email = TextEditingController();
  final _pass = TextEditingController();
  bool _loading = false;
  String? _error;
  bool _showPasswordField = false;
  String? _validatedEmail;

  // Basic email validation regex
  final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }

  void _handleContinue() {
    if (!_showPasswordField) {
      // Validate email and switch to password field
      final email = _email.text.trim();
      if (_emailRegex.hasMatch(email)) {
        setState(() {
          _validatedEmail = email;
          _showPasswordField = true;
          _error = null;
        });
      } else {
        setState(() {
          _error = "Please enter a valid email address";
        });
      }
    } else {
      // Perform sign-in
      if (_validatedEmail != null && _pass.text.trim().isNotEmpty) {
        _performSignIn();
      } else {
        setState(() {
          _error = "Please enter a password";
        });
      }
    }
  }

  void _performSignIn() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      await ref.read(authNotifierProvider.notifier).signIn(
            _validatedEmail!,
            _pass.text.trim(),
          );
      GoRouter.of(context).go('/home');
    } catch (e) {
      setState(() {
        _error = e.toString();
        _showPasswordField = false;
        _pass.clear();
      });
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Scrollable content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 150),

                      /// Logo
                      Center(
                        child: SvgPicture.asset(
                          'assets/login_page/logo.svg',
                          // "assets/assement/img2.svg",
                          width: 130,
                          height: 40,
                          placeholderBuilder: (context) => const SizedBox(
                            width: 130,
                            height: 40,
                            child: Placeholder(),
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Login or ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF727A87),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => GoRouter.of(context).go('/signup'),
                            child: const Text(
                              "create your account",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF4C6EF5), // Primary color from theme.dart
                                decoration: TextDecoration.underline, // Hyperlink style
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 50),

                      /// Email or Password field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFE8E9ED)),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 4),
                          child: Row(
                            children: [
                              Expanded(
                                child: _showPasswordField
                                    ? TextField(
                                        controller: _pass,
                                        obscureText: true,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF313131)),
                                        decoration: const InputDecoration(
                                          hintText: "Enter your password",
                                          border: InputBorder.none,
                                        ),
                                      )
                                    : TextField(
                                        controller: _email,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF313131)),
                                        decoration: const InputDecoration(
                                          hintText: "Enter your email",
                                          border: InputBorder.none,
                                        ),
                                      ),
                              ),
                              if (_showPasswordField)
                                IconButton(
                                  icon: const Icon(Icons.arrow_back),
                                  onPressed: () {
                                    setState(() {
                                      _showPasswordField = false;
                                      _pass.clear();
                                      _error = null;
                                    });
                                  },
                                ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      if (_error != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          child: Text(
                            _error!,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),

                      const SizedBox(height: 26),

                      /// Continue button
                      InkWell(
                        onTap: _loading ? null : _handleContinue,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: const Color(0xFF255FD5),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 41),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _loading
                                  ? const SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : const Text(
                                      "Continue",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                              const SizedBox(width: 12),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// Bottom section with wave + support
              SizedBox(
                height: 200, // Match the SVG height from viewBox
                child: Stack(
                  alignment: Alignment.topCenter, // Align children to the top
                  clipBehavior: Clip.none, // Allow overflow beyond the container
                  children: [
                    SvgPicture.asset(
                      'assets/login_page/bottom_wave.svg',
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter, // Anchor SVG to the top
                      placeholderBuilder: (context) => const SizedBox(
                        width: double.infinity,
                        height: 245,
                        child: Placeholder(),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/login_page/support.svg',
                            width: 22,
                            height: 22,
                            color: Colors.white, // Ensure visibility if SVG is not white
                            placeholderBuilder: (context) => const SizedBox(
                              width: 22,
                              height: 22,
                              child: Placeholder(),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Support",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
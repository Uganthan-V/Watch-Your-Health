
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/theme.dart';
import '../../domain/usecases/signup_user.dart';
import '../../data/datasources/remote/auth_remote.dart';
import '../../data/repositories_impl/auth_repository_impl.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _weightKgController = TextEditingController();
  final _heightCmController = TextEditingController();
  final List<String> _selectedGoals = [];
  bool _isLoading = false;
  String? _error;

  // Predefined goals for selection
  final List<String> _availableGoals = [
    'weight_loss',
    'muscle_gain',
    'flexibility',
    'endurance',
  ];

  // Email validation regex
  final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    _weightKgController.dispose();
    _heightCmController.dispose();
    super.dispose();
  }

  Future<void> _signUp() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    // Validate inputs
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();
    final firstName = _firstNameController.text.trim();
    final lastName = _lastNameController.text.trim();
    final age = int.tryParse(_ageController.text.trim()) ?? 0;
    final weightKg = double.tryParse(_weightKgController.text.trim()) ?? 0.0;
    final heightCm = int.tryParse(_heightCmController.text.trim()) ?? 0;

    if (!_emailRegex.hasMatch(email)) {
      setState(() {
        _error = 'Please enter a valid email address';
        _isLoading = false;
      });
      return;
    }
    if (password.length < 6) {
      setState(() {
        _error = 'Password must be at least 6 characters';
        _isLoading = false;
      });
      return;
    }
    if (password != confirmPassword) {
      setState(() {
        _error = 'Passwords do not match';
        _isLoading = false;
      });
      return;
    }
    if (firstName.isEmpty || lastName.isEmpty) {
      setState(() {
        _error = 'First name and last name are required';
        _isLoading = false;
      });
      return;
    }

    try {
      final signUpUser = SignUpUser(AuthRepositoryImpl(AuthRemote()));
      await signUpUser(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
        age: age,
        weightKg: weightKg,
        heightCm: heightCm,
        goals: _selectedGoals,
      );
      GoRouter.of(context).go('/home');
    } catch (e) {
      setState(() {
        _error = e.toString().replaceFirst('ServerException: ', '').replaceAllMapped(
          RegExp(r'\[firebase_auth/([^\]]+)\]'),
          (match) => {
            'email-already-in-use': 'Email already in use',
            'weak-password': 'Password is too weak (minimum 6 characters)',
            'invalid-email': 'Invalid email format',
          }[match.group(1)] ?? match.group(0)!,
        );
      });
    } finally {
      setState(() {
        _isLoading = false;
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 150),
                      Center(
                        child: SvgPicture.asset(
                          'assets/login_page/logo.svg',
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
                      const Text(
                        'Create Your AllyCare Account',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1F2937), // From theme.dart
                        ),
                      ),
                      const SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: TextField(
                          controller: _firstNameController,
                          decoration: const InputDecoration(
                            labelText: 'First Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: TextField(
                          controller: _lastNameController,
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: TextField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: TextField(
                          controller: _confirmPasswordController,
                          decoration: const InputDecoration(
                            labelText: 'Confirm Password',
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: TextField(
                          controller: _ageController,
                          decoration: const InputDecoration(
                            labelText: 'Age (optional)',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: TextField(
                          controller: _weightKgController,
                          decoration: const InputDecoration(
                            labelText: 'Weight (kg, optional)',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: TextField(
                          controller: _heightCmController,
                          decoration: const InputDecoration(
                            labelText: 'Height (cm, optional)',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Fitness Goals (optional)',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            ..._availableGoals.map((goal) => CheckboxListTile(
                                  title: Text(goal.replaceAll('_', ' ').capitalize()),
                                  value: _selectedGoals.contains(goal),
                                  onChanged: (value) {
                                    setState(() {
                                      if (value == true) {
                                        _selectedGoals.add(goal);
                                      } else {
                                        _selectedGoals.remove(goal);
                                      }
                                    });
                                  },
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      if (_error != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          child: Text(
                            _error!,
                            style: const TextStyle(color: Colors.red),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: _isLoading ? null : _signUp,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: const Color(0xFF4C6EF5), // From theme.dart
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 41),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _isLoading
                                  ? const SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : const Text(
                                      'Sign Up',
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
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () => GoRouter.of(context).go('/login'),
                        child: const Text('Already have an account? Log in'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    SvgPicture.asset(
                      'assets/login_page/bottom_wave.svg',
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
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
                            color: Colors.white,
                            placeholderBuilder: (context) => const SizedBox(
                              width: 22,
                              height: 22,
                              child: Placeholder(),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Support',
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

// Extension to capitalize strings
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).replaceAll('_', ' ')}";
  }
}
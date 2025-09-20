

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../assessment/assessment_list.dart';
import '../appointment/appointment_list.dart';

class HomeShell extends StatefulWidget {
  final Widget? child;
  const HomeShell({Key? key, this.child}) : super(key: key);

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final tabs = ['My Assessments', 'My Appointments'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Header
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
                margin: const EdgeInsets.only(top: 8, bottom: 7),
                width: double.infinity,
                child: Row(
                  children: [
                    const SizedBox(width: 10), // Spacing between icon and text
                    const Text(
                      'Hello Jane',
                      style: TextStyle(
                        color: Color(0xFF3B63D6),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.account_circle_outlined, // Account icon on the right
                      size: 32,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              // Toggle Buttons (replacing TabBar)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: const Color(0xFFF0F1F8),
                  ),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(bottom: 12),
                  width: double.infinity,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _tabController.index = 0;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: _tabController.index == 0 ? Colors.white : Colors.transparent,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 11),
                          margin: const EdgeInsets.only(right: 21),
                          child: Text(
                            'My Assessments',
                            style: TextStyle(
                              color: _tabController.index == 0 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            _tabController.index = 1;
                            setState(() {});
                          },
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'My Appointments',
                              style: TextStyle(
                                color: _tabController.index == 1 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // TabBarView with reduced size
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    AssessmentListScreen(),
                    AppointmentListScreen(),
                  ],
                ),
              ),
              // Challenges Section
              Container(
                margin: const EdgeInsets.only(bottom: 14, left: 18, right: 18),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 5, left: 18, right: 18),
                      width: double.infinity,
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Challenges',
                              style: TextStyle(
                                color: Color(0xFF2F2F2F),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 12),
                                child: const Text(
                                  'View All',
                                  style: TextStyle(
                                    color: Color(0xFF2F2F2F),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                                size: 24,
                                color: Color(0xFF2F2F2F),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: const Color(0xFFC0E9D1),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 17),
                            child: const Text(
                              r"Today's Challenge!",
                              style: TextStyle(
                                color: Color(0xFF2A7A70),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 17),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: const Color(0xFF2A7A70),
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                                        margin: const EdgeInsets.only(bottom: 8),
                                        child: const Text(
                                          'Push Up 20x',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(bottom: 11),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(7),
                                                color: Colors.white,
                                              ),
                                              padding: const EdgeInsets.only(right: 79),
                                              margin: const EdgeInsets.only(bottom: 4),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(7),
                                                  color: const Color(0xFFFF88A4),
                                                ),
                                                width: 82,
                                                height: 9,
                                              ),
                                            ),
                                            const Text(
                                              '10/20 Complete',
                                              style: TextStyle(
                                                color: Color(0xFF313131),
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.white,
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.play_arrow,
                                              size: 19,
                                              color: Color(0xFF255FD5),
                                            ),
                                            const SizedBox(width: 9),
                                            Container(
                                              padding: const EdgeInsets.only(bottom: 1),
                                              child: const Text(
                                                'Continue',
                                                style: TextStyle(
                                                  color: Color(0xFF255FD5),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // image1.png positioned with 20px gap from right
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20.0),
                                      child: Image.asset(
                                        'assets/home/image1.png',
                                        width: 320,
                                        
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) {
                                          return Container(
                                            width: 120,
                                            height: 120,
                                            color: Colors.grey[300],
                                            child: const Icon(Icons.image_not_supported),
                                          );
                                        },
                                      ),
                                    ),
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
              // Workout Routines Section - Expanded to full width
              Container(
                margin: const EdgeInsets.only(bottom: 6, left: 18, right: 18),
                width: double.infinity, // Full width to fit screen
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity, // Full width for header
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Workout Routines',
                              style: TextStyle(
                                color: Color(0xFF2F2F2F),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                'View All',
                                style: TextStyle(
                                  color: Color(0xFF2F2F2F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.arrow_forward,
                                size: 24,
                                color: Color(0xFF2F2F2F),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Full width workout routine container
                    Container(
                      width: double.infinity, // Full width
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
                        borderRadius: BorderRadius.circular(21),
                      ),
                      padding: const EdgeInsets.all(12), // Increased padding
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Left side - Image and text content
                          Expanded(
                            flex: 3, // More space for content
                            child: Row(
                              children: [
                                // Sweat Starter main image - using image2.png
                                Container(
                                  width: 120, // Larger image
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/home/image2.png',
                                      width: 120,
                                      height: 120,
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Container(
                                          color: Colors.grey[300],
                                          child: const Icon(Icons.image_not_supported),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                // Text content
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Sweat Starter',
                                        style: TextStyle(
                                          color: Color(0xFF2F2F2F),
                                          fontSize: 16, // Slightly larger
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      const Text(
                                        'Full Body',
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      InkWell(
                                        onTap: () {
                                          print('Lose Weight Pressed');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: const Color(0xFF255FD5), width: 1),
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.white,
                                          ),
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                          child: const Text(
                                            'Lose Weight',
                                            style: TextStyle(
                                              color: Color(0xFF255FD5),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Difficulty: Medium',
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Right side - Additional image (using image1.png)
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 1, // Less space for the side image
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                // child: Image.asset(
                                //   'assets/home/image1.png',
                                //   width: 80,
                                //   height: 120,
                                //   fit: BoxFit.cover,
                                //   errorBuilder: (context, error, stackTrace) {
                                //     return Container(
                                //       color: Colors.grey[300],
                                //       child: const Icon(Icons.image_not_supported),
                                //     );
                                //   },
                                // ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Bottom Image
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                width: double.infinity,
                // child: Image.asset(
                //   'assets/home/image1.png',
                //   width: 134,
                //   height: 5,
                //   fit: BoxFit.fill,
                //   errorBuilder: (context, error, stackTrace) {
                //     return Container(
                //       height: 5,
                //       color: Colors.grey[300],
                //     );
                //   },
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
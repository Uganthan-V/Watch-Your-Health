// // // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // // import '../assessment/assessment_list.dart';
// // // // // // // // // // import '../appointment/appointment_list.dart';

// // // // // // // // // // class HomeShell extends StatefulWidget {
// // // // // // // // // //   final Widget? child;
// // // // // // // // // //   const HomeShell({Key? key, this.child}) : super(key: key);

// // // // // // // // // //   @override
// // // // // // // // // //   State<HomeShell> createState() => _HomeShellState();
// // // // // // // // // // }

// // // // // // // // // // class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
// // // // // // // // // //   late final TabController _tabController;
// // // // // // // // // //   final tabs = ['My Assessments', 'My Appointments'];

// // // // // // // // // //   @override
// // // // // // // // // //   void initState() {
// // // // // // // // // //     super.initState();
// // // // // // // // // //     _tabController = TabController(length: tabs.length, vsync: this);
// // // // // // // // // //   }

// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return Scaffold(
// // // // // // // // // //       appBar: AppBar(
// // // // // // // // // //         title: const Text('Hello Jane', style: TextStyle(color: Color(0xFF3B63D6), fontWeight: FontWeight.bold)),
// // // // // // // // // //         actions: [IconButton(onPressed: () {}, icon: const CircleAvatar(child: Icon(Icons.person)))],
// // // // // // // // // //       ),
// // // // // // // // // //       body: Column(
// // // // // // // // // //         children: [
// // // // // // // // // //           Padding(
// // // // // // // // // //             padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // // // // // // // //             child: Container(
// // // // // // // // // //               decoration: BoxDecoration(color: const Color(0xFFF3F6FB), borderRadius: BorderRadius.circular(14)),
// // // // // // // // // //               child: TabBar(
// // // // // // // // // //                 controller: _tabController,
// // // // // // // // // //                 indicator: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
// // // // // // // // // //                 labelColor: const Color(0xFF3B63D6),
// // // // // // // // // //                 unselectedLabelColor: Colors.black54,
// // // // // // // // // //                 tabs: tabs.map((t) => Tab(text: t)).toList(),
// // // // // // // // // //               ),
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //           Expanded(
// // // // // // // // // //             child: TabBarView(
// // // // // // // // // //               controller: _tabController,
// // // // // // // // // //               children: const [
// // // // // // // // // //                 AssessmentListScreen(),
// // // // // // // // // //                 AppointmentListScreen(),
// // // // // // // // // //               ],
// // // // // // // // // //             ),
// // // // // // // // // //           ),
// // // // // // // // // //         ],
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }


// // // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // // import '../assessment/assessment_list.dart';
// // // // // // // // // import '../appointment/appointment_list.dart';

// // // // // // // // // class HomeShell extends StatefulWidget {
// // // // // // // // //   final Widget? child;
// // // // // // // // //   const HomeShell({Key? key, this.child}) : super(key: key);

// // // // // // // // //   @override
// // // // // // // // //   State<HomeShell> createState() => _HomeShellState();
// // // // // // // // // }

// // // // // // // // // class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
// // // // // // // // //   late final TabController _tabController;
// // // // // // // // //   final tabs = ['My Assessments', 'My Appointments'];

// // // // // // // // //   @override
// // // // // // // // //   void initState() {
// // // // // // // // //     super.initState();
// // // // // // // // //     _tabController = TabController(length: tabs.length, vsync: this);
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //       body: SafeArea(
// // // // // // // // //         child: Column(
// // // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //           children: [
// // // // // // // // //             // Top Header (inspired by Frame1)
// // // // // // // // //             Container(
// // // // // // // // //               padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
// // // // // // // // //               margin: const EdgeInsets.only(top: 8, bottom: 7),
// // // // // // // // //               width: double.infinity,
// // // // // // // // //               child: Row(
// // // // // // // // //                 children: [
// // // // // // // // //                   // Logo
// // // // // // // // //                   Image.asset(
// // // // // // // // //                     'assets/images/logo.png', // Replace with your logo image
// // // // // // // // //                     width: 54,
// // // // // // // // //                     height: 21,
// // // // // // // // //                     fit: BoxFit.fill,
// // // // // // // // //                   ),
// // // // // // // // //                   const Spacer(),
// // // // // // // // //                   // Greeting
// // // // // // // // //                   const Text(
// // // // // // // // //                     'Hello Jane',
// // // // // // // // //                     style: TextStyle(
// // // // // // // // //                       color: Color(0xFF3B63D6),
// // // // // // // // //                       fontSize: 24,
// // // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // // //                     ),
// // // // // // // // //                   ),
// // // // // // // // //                   const Spacer(),
// // // // // // // // //                   // Profile and Notification Icons
// // // // // // // // //                   Row(
// // // // // // // // //                     children: [
// // // // // // // // //                       Image.asset(
// // // // // // // // //                         'assets/images/notification_icon.png', // Replace with your notification icon
// // // // // // // // //                         width: 17,
// // // // // // // // //                         height: 10,
// // // // // // // // //                         fit: BoxFit.fill,
// // // // // // // // //                       ),
// // // // // // // // //                       const SizedBox(width: 4),
// // // // // // // // //                       Image.asset(
// // // // // // // // //                         'assets/images/profile_icon.png', // Replace with your profile icon
// // // // // // // // //                         width: 24,
// // // // // // // // //                         height: 11,
// // // // // // // // //                         fit: BoxFit.fill,
// // // // // // // // //                       ),
// // // // // // // // //                     ],
// // // // // // // // //                   ),
// // // // // // // // //                 ],
// // // // // // // // //               ),
// // // // // // // // //             ),
// // // // // // // // //             // TabBar
// // // // // // // // //             Padding(
// // // // // // // // //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // // // // // // //               child: Container(
// // // // // // // // //                 decoration: BoxDecoration(
// // // // // // // // //                   color: const Color(0xFFF3F6FB),
// // // // // // // // //                   borderRadius: BorderRadius.circular(14),
// // // // // // // // //                 ),
// // // // // // // // //                 child: TabBar(
// // // // // // // // //                   controller: _tabController,
// // // // // // // // //                   indicator: BoxDecoration(
// // // // // // // // //                     color: Colors.white,
// // // // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // // // //                   ),
// // // // // // // // //                   labelColor: const Color(0xFF3B63D6),
// // // // // // // // //                   unselectedLabelColor: Colors.black54,
// // // // // // // // //                   tabs: tabs.map((t) => Tab(text: t)).toList(),
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //             ),
// // // // // // // // //             // TabBarView
// // // // // // // // //             Expanded(
// // // // // // // // //               child: TabBarView(
// // // // // // // // //                 controller: _tabController,
// // // // // // // // //                 children: const [
// // // // // // // // //                   AssessmentListScreen(),
// // // // // // // // //                   AppointmentListScreen(),
// // // // // // // // //                 ],
// // // // // // // // //               ),
// // // // // // // // //             ),
// // // // // // // // //           ],
// // // // // // // // //         ),
// // // // // // // // //       ),
// // // // // // // // //     );
// // // // // // // // //   }

// // // // // // // // //   @override
// // // // // // // // //   void dispose() {
// // // // // // // // //     _tabController.dispose();
// // // // // // // // //     super.dispose();
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'package:flutter_svg/flutter_svg.dart';
// // // // // // // // import '../assessment/assessment_list.dart';
// // // // // // // // import '../appointment/appointment_list.dart';

// // // // // // // // class HomeShell extends StatefulWidget {
// // // // // // // //   final Widget? child;
// // // // // // // //   const HomeShell({Key? key, this.child}) : super(key: key);

// // // // // // // //   @override
// // // // // // // //   State<HomeShell> createState() => _HomeShellState();
// // // // // // // // }

// // // // // // // // class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
// // // // // // // //   late final TabController _tabController;
// // // // // // // //   final tabs = ['My Assessments', 'My Appointments'];

// // // // // // // //   @override
// // // // // // // //   void initState() {
// // // // // // // //     super.initState();
// // // // // // // //     _tabController = TabController(length: tabs.length, vsync: this);
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       body: SafeArea(
// // // // // // // //         child: Column(
// // // // // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //           children: [
// // // // // // // //             // Top Header (inspired by Frame1)
// // // // // // // //             Container(
// // // // // // // //               padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
// // // // // // // //               margin: const EdgeInsets.only(top: 8, bottom: 7),
// // // // // // // //               width: double.infinity,
// // // // // // // //               child: Row(
// // // // // // // //                 children: [
// // // // // // // //                   // Logo
// // // // // // // //                   SvgPicture.asset(
// // // // // // // //                     'assets/home/img1.svg', // Use provided logo
// // // // // // // //                     width: 54,
// // // // // // // //                     height: 21,
// // // // // // // //                     fit: BoxFit.fill,
// // // // // // // //                   ),
// // // // // // // //                   const Spacer(),
// // // // // // // //                   // Greeting
// // // // // // // //                   const Text(
// // // // // // // //                     'Hello Jane',
// // // // // // // //                     style: TextStyle(
// // // // // // // //                       color: Color(0xFF3B63D6),
// // // // // // // //                       fontSize: 24,
// // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                   const Spacer(),
// // // // // // // //                   // Profile Icon (no notification icon provided, so using profile only)
// // // // // // // //                   SvgPicture.asset(
// // // // // // // //                     'assets/home/img2.svg', // Use provided profile icon
// // // // // // // //                     width: 24,
// // // // // // // //                     height: 11,
// // // // // // // //                     fit: BoxFit.fill,
// // // // // // // //                   ),
// // // // // // // //                 ],
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //             // TabBar
// // // // // // // //             Padding(
// // // // // // // //               padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // // // // // //               child: Container(
// // // // // // // //                 decoration: BoxDecoration(
// // // // // // // //                   color: const Color(0xFFF3F6FB),
// // // // // // // //                   borderRadius: BorderRadius.circular(14),
// // // // // // // //                 ),
// // // // // // // //                 child: TabBar(
// // // // // // // //                   controller: _tabController,
// // // // // // // //                   indicator: BoxDecoration(
// // // // // // // //                     color: Colors.white,
// // // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // // //                   ),
// // // // // // // //                   labelColor: const Color(0xFF3B63D6),
// // // // // // // //                   unselectedLabelColor: Colors.black54,
// // // // // // // //                   tabs: tabs.map((t) => Tab(text: t)).toList(),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //             // TabBarView
// // // // // // // //             Expanded(
// // // // // // // //               child: TabBarView(
// // // // // // // //                 controller: _tabController,
// // // // // // // //                 children: const [
// // // // // // // //                   AssessmentListScreen(),
// // // // // // // //                   AppointmentListScreen(),
// // // // // // // //                 ],
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   @override
// // // // // // // //   void dispose() {
// // // // // // // //     _tabController.dispose();
// // // // // // // //     super.dispose();
// // // // // // // //   }
// // // // // // // // }

// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:flutter_svg/flutter_svg.dart';
// // // // // // // import '../assessment/assessment_list.dart';
// // // // // // // import '../appointment/appointment_list.dart';

// // // // // // // class HomeShell extends StatefulWidget {
// // // // // // //   final Widget? child;
// // // // // // //   const HomeShell({Key? key, this.child}) : super(key: key);

// // // // // // //   @override
// // // // // // //   State<HomeShell> createState() => _HomeShellState();
// // // // // // // }

// // // // // // // class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
// // // // // // //   late final TabController _tabController;
// // // // // // //   final tabs = ['My Assessments', 'My Appointments'];

// // // // // // //   @override
// // // // // // //   void initState() {
// // // // // // //     super.initState();
// // // // // // //     _tabController = TabController(length: tabs.length, vsync: this);
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       body: SafeArea(
// // // // // // //         child: SingleChildScrollView(
// // // // // // //           child: Column(
// // // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //             children: [
// // // // // // //               // Top Header
// // // // // // //               Container(
// // // // // // //                 padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
// // // // // // //                 margin: const EdgeInsets.only(top: 8, bottom: 7),
// // // // // // //                 width: double.infinity,
// // // // // // //                 child: Row(
// // // // // // //                   children: [
// // // // // // //                     SvgPicture.asset(
// // // // // // //                       'assets/home/img1.svg',
// // // // // // //                       width: 54,
// // // // // // //                       height: 21,
// // // // // // //                       fit: BoxFit.fill,
// // // // // // //                     ),
// // // // // // //                     const Spacer(),
// // // // // // //                     const Text(
// // // // // // //                       'Hello Jane',
// // // // // // //                       style: TextStyle(
// // // // // // //                         color: Color(0xFF3B63D6),
// // // // // // //                         fontSize: 24,
// // // // // // //                         fontWeight: FontWeight.bold,
// // // // // // //                       ),
// // // // // // //                     ),
// // // // // // //                     const Spacer(),
// // // // // // //                     SvgPicture.asset(
// // // // // // //                       'assets/home/img2.svg',
// // // // // // //                       width: 24,
// // // // // // //                       height: 11,
// // // // // // //                       fit: BoxFit.fill,
// // // // // // //                     ),
// // // // // // //                   ],
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               // TabBar
// // // // // // //               Padding(
// // // // // // //                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // // // // //                 child: Container(
// // // // // // //                   decoration: BoxDecoration(
// // // // // // //                     color: const Color(0xFFF3F6FB),
// // // // // // //                     borderRadius: BorderRadius.circular(14),
// // // // // // //                   ),
// // // // // // //                   child: TabBar(
// // // // // // //                     controller: _tabController,
// // // // // // //                     indicator: BoxDecoration(
// // // // // // //                       color: Colors.white,
// // // // // // //                       borderRadius: BorderRadius.circular(12),
// // // // // // //                     ),
// // // // // // //                     labelColor: const Color(0xFF3B63D6),
// // // // // // //                     unselectedLabelColor: Colors.black54,
// // // // // // //                     tabs: tabs.map((t) => Tab(text: t)).toList(),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               // TabBarView with reduced size
// // // // // // //               SizedBox(
// // // // // // //                 height: MediaQuery.of(context).size.height * 0.4, // 40% of screen height
// // // // // // //                 child: TabBarView(
// // // // // // //                   controller: _tabController,
// // // // // // //                   children: const [
// // // // // // //                     AssessmentListScreen(),
// // // // // // //                     AppointmentListScreen(),
// // // // // // //                   ],
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               // Challenges Section
// // // // // // //               Container(
// // // // // // //                 margin: const EdgeInsets.only(bottom: 14, left: 18, right: 18),
// // // // // // //                 width: double.infinity,
// // // // // // //                 child: Column(
// // // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                   children: [
// // // // // // //                     Container(
// // // // // // //                       margin: const EdgeInsets.only(bottom: 5, left: 18, right: 18),
// // // // // // //                       width: double.infinity,
// // // // // // //                       child: Row(
// // // // // // //                         children: [
// // // // // // //                           const Expanded(
// // // // // // //                             child: Text(
// // // // // // //                               'Challenges',
// // // // // // //                               style: TextStyle(
// // // // // // //                                 color: Color(0xFF2F2F2F),
// // // // // // //                                 fontSize: 14,
// // // // // // //                                 fontWeight: FontWeight.bold,
// // // // // // //                               ),
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                           Row(
// // // // // // //                             children: [
// // // // // // //                               Container(
// // // // // // //                                 margin: const EdgeInsets.only(right: 12),
// // // // // // //                                 child: const Text(
// // // // // // //                                   'View All',
// // // // // // //                                   style: TextStyle(
// // // // // // //                                     color: Color(0xFF2F2F2F),
// // // // // // //                                     fontSize: 12,
// // // // // // //                                     fontWeight: FontWeight.bold,
// // // // // // //                                   ),
// // // // // // //                                 ),
// // // // // // //                               ),
// // // // // // //                               SvgPicture.asset(
// // // // // // //                                 'assets/login_page/support.svg', // Use provided asset
// // // // // // //                                 width: 24,
// // // // // // //                                 height: 24,
// // // // // // //                                 fit: BoxFit.fill,
// // // // // // //                               ),
// // // // // // //                             ],
// // // // // // //                           ),
// // // // // // //                         ],
// // // // // // //                       ),
// // // // // // //                     ),
// // // // // // //                     Container(
// // // // // // //                       decoration: BoxDecoration(
// // // // // // //                         borderRadius: BorderRadius.circular(21),
// // // // // // //                         color: const Color(0xFFC0E9D1),
// // // // // // //                       ),
// // // // // // //                       padding: const EdgeInsets.symmetric(vertical: 8),
// // // // // // //                       width: double.infinity,
// // // // // // //                       child: Column(
// // // // // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                         children: [
// // // // // // //                           Container(
// // // // // // //                             margin: const EdgeInsets.only(left: 17),
// // // // // // //                             child: const Text(
// // // // // // //                               'Today’s Challenge!',
// // // // // // //                               style: TextStyle(
// // // // // // //                                 color: Color(0xFF2A7A70),
// // // // // // //                                 fontSize: 12,
// // // // // // //                                 fontWeight: FontWeight.bold,
// // // // // // //                               ),
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                           Container(
// // // // // // //                             margin: const EdgeInsets.only(left: 17),
// // // // // // //                             child: Row(
// // // // // // //                               children: [
// // // // // // //                                 Container(
// // // // // // //                                   margin: const EdgeInsets.only(right: 8),
// // // // // // //                                   child: Column(
// // // // // // //                                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                                     children: [
// // // // // // //                                       Container(
// // // // // // //                                         decoration: BoxDecoration(
// // // // // // //                                           borderRadius: BorderRadius.circular(15),
// // // // // // //                                           color: const Color(0xFF2A7A70),
// // // // // // //                                         ),
// // // // // // //                                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
// // // // // // //                                         margin: const EdgeInsets.only(bottom: 8),
// // // // // // //                                         child: const Text(
// // // // // // //                                           'Push Up 20x',
// // // // // // //                                           style: TextStyle(
// // // // // // //                                             color: Colors.white,
// // // // // // //                                             fontSize: 10,
// // // // // // //                                             fontWeight: FontWeight.bold,
// // // // // // //                                           ),
// // // // // // //                                         ),
// // // // // // //                                       ),
// // // // // // //                                       Container(
// // // // // // //                                         margin: const EdgeInsets.only(bottom: 11),
// // // // // // //                                         child: Column(
// // // // // // //                                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                                           children: [
// // // // // // //                                             Container(
// // // // // // //                                               decoration: BoxDecoration(
// // // // // // //                                                 borderRadius: BorderRadius.circular(7),
// // // // // // //                                                 color: Colors.white,
// // // // // // //                                               ),
// // // // // // //                                               padding: const EdgeInsets.only(right: 79),
// // // // // // //                                               margin: const EdgeInsets.only(bottom: 4),
// // // // // // //                                               child: Container(
// // // // // // //                                                 decoration: BoxDecoration(
// // // // // // //                                                   borderRadius: BorderRadius.circular(7),
// // // // // // //                                                   color: const Color(0xFFFF88A4),
// // // // // // //                                                 ),
// // // // // // //                                                 width: 82,
// // // // // // //                                                 height: 9,
// // // // // // //                                               ),
// // // // // // //                                             ),
// // // // // // //                                             const Text(
// // // // // // //                                               '10/20 Complete',
// // // // // // //                                               style: TextStyle(
// // // // // // //                                                 color: Color(0xFF313131),
// // // // // // //                                                 fontSize: 10,
// // // // // // //                                               ),
// // // // // // //                                             ),
// // // // // // //                                           ],
// // // // // // //                                         ),
// // // // // // //                                       ),
// // // // // // //                                       Container(
// // // // // // //                                         decoration: BoxDecoration(
// // // // // // //                                           borderRadius: BorderRadius.circular(15),
// // // // // // //                                           color: Colors.white,
// // // // // // //                                         ),
// // // // // // //                                         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
// // // // // // //                                         child: Row(
// // // // // // //                                           children: [
// // // // // // //                                             const Icon(
// // // // // // //                                               Icons.play_arrow,
// // // // // // //                                               size: 19,
// // // // // // //                                               color: Color(0xFF255FD5),
// // // // // // //                                             ),
// // // // // // //                                             const SizedBox(width: 9),
// // // // // // //                                             Container(
// // // // // // //                                               padding: const EdgeInsets.only(bottom: 1),
// // // // // // //                                               child: const Text(
// // // // // // //                                                 'Continue',
// // // // // // //                                                 style: TextStyle(
// // // // // // //                                                   color: Color(0xFF255FD5),
// // // // // // //                                                   fontSize: 12,
// // // // // // //                                                   fontWeight: FontWeight.bold,
// // // // // // //                                                 ),
// // // // // // //                                               ),
// // // // // // //                                             ),
// // // // // // //                                           ],
// // // // // // //                                         ),
// // // // // // //                                       ),
// // // // // // //                                     ],
// // // // // // //                                   ),
// // // // // // //                                 ),
// // // // // // //                                 SvgPicture.asset(
// // // // // // //                                   'assets/assessment/img1.svg', // Use provided asset
// // // // // // //                                   width: 152,
// // // // // // //                                   height: 85,
// // // // // // //                                   fit: BoxFit.fill,
// // // // // // //                                 ),
// // // // // // //                               ],
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                         ],
// // // // // // //                       ),
// // // // // // //                     ),
// // // // // // //                   ],
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               // Workout Routines Section
// // // // // // //               Container(
// // // // // // //                 margin: const EdgeInsets.only(bottom: 6, left: 18),
// // // // // // //                 child: Column(
// // // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                   children: [
// // // // // // //                     Container(
// // // // // // //                       margin: const EdgeInsets.only(bottom: 12, left: 18),
// // // // // // //                       child: Row(
// // // // // // //                         children: [
// // // // // // //                           Container(
// // // // // // //                             margin: const EdgeInsets.only(right: 103),
// // // // // // //                             child: const Text(
// // // // // // //                               'Workout Routines',
// // // // // // //                               style: TextStyle(
// // // // // // //                                 color: Color(0xFF2F2F2F),
// // // // // // //                                 fontSize: 14,
// // // // // // //                                 fontWeight: FontWeight.bold,
// // // // // // //                               ),
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                           Row(
// // // // // // //                             children: [
// // // // // // //                               Container(
// // // // // // //                                 margin: const EdgeInsets.only(right: 12),
// // // // // // //                                 child: const Text(
// // // // // // //                                   'View All',
// // // // // // //                                   style: TextStyle(
// // // // // // //                                     color: Color(0xFF2F2F2F),
// // // // // // //                                     fontSize: 12,
// // // // // // //                                     fontWeight: FontWeight.bold,
// // // // // // //                                   ),
// // // // // // //                                 ),
// // // // // // //                               ),
// // // // // // //                               SvgPicture.asset(
// // // // // // //                                 'assets/login_page/support.svg', // Use provided asset
// // // // // // //                                 width: 24,
// // // // // // //                                 height: 24,
// // // // // // //                                 fit: BoxFit.fill,
// // // // // // //                               ),
// // // // // // //                             ],
// // // // // // //                           ),
// // // // // // //                         ],
// // // // // // //                       ),
// // // // // // //                     ),
// // // // // // //                     Row(
// // // // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                       children: [
// // // // // // //                         Container(
// // // // // // //                           decoration: BoxDecoration(
// // // // // // //                             border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // // // // // //                             borderRadius: BorderRadius.circular(21),
// // // // // // //                           ),
// // // // // // //                           padding: const EdgeInsets.all(1),
// // // // // // //                           margin: const EdgeInsets.only(right: 19),
// // // // // // //                           child: Row(
// // // // // // //                             children: [
// // // // // // //                               SvgPicture.asset(
// // // // // // //                                 'assets/appoint/img1.svg', // Use provided asset
// // // // // // //                                 width: 109,
// // // // // // //                                 height: 110,
// // // // // // //                                 fit: BoxFit.fill,
// // // // // // //                               ),
// // // // // // //                               const SizedBox(width: 19),
// // // // // // //                               Column(
// // // // // // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                                 children: [
// // // // // // //                                   Container(
// // // // // // //                                     margin: const EdgeInsets.only(bottom: 3),
// // // // // // //                                     child: const Text(
// // // // // // //                                       'Sweat Starter',
// // // // // // //                                       style: TextStyle(
// // // // // // //                                         color: Color(0xFF2F2F2F),
// // // // // // //                                         fontSize: 14,
// // // // // // //                                         fontWeight: FontWeight.bold,
// // // // // // //                                       ),
// // // // // // //                                     ),
// // // // // // //                                   ),
// // // // // // //                                   Container(
// // // // // // //                                     margin: const EdgeInsets.only(bottom: 11),
// // // // // // //                                     child: const Text(
// // // // // // //                                       'Full Body',
// // // // // // //                                       style: TextStyle(
// // // // // // //                                         color: Color(0xFF666666),
// // // // // // //                                         fontSize: 10,
// // // // // // //                                       ),
// // // // // // //                                     ),
// // // // // // //                                   ),
// // // // // // //                                   InkWell(
// // // // // // //                                     onTap: () {
// // // // // // //                                       print('Lose Weight Pressed');
// // // // // // //                                     },
// // // // // // //                                     child: Container(
// // // // // // //                                       decoration: BoxDecoration(
// // // // // // //                                         border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // // // // // //                                         borderRadius: BorderRadius.circular(21),
// // // // // // //                                       ),
// // // // // // //                                       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
// // // // // // //                                       margin: const EdgeInsets.only(bottom: 11),
// // // // // // //                                       child: const Text(
// // // // // // //                                         'Lose Weight',
// // // // // // //                                         style: TextStyle(
// // // // // // //                                           color: Color(0xFF255FD5),
// // // // // // //                                           fontSize: 8,
// // // // // // //                                           fontWeight: FontWeight.bold,
// // // // // // //                                         ),
// // // // // // //                                       ),
// // // // // // //                                     ),
// // // // // // //                                   ),
// // // // // // //                                   const Text(
// // // // // // //                                     'Difficulty: Medium',
// // // // // // //                                     style: TextStyle(
// // // // // // //                                       color: Color(0xFF666666),
// // // // // // //                                       fontSize: 10,
// // // // // // //                                     ),
// // // // // // //                                   ),
// // // // // // //                                 ],
// // // // // // //                               ),
// // // // // // //                             ],
// // // // // // //                           ),
// // // // // // //                         ),
// // // // // // //                         SvgPicture.asset(
// // // // // // //                           'assets/appoint/img2.svg', // Use provided asset
// // // // // // //                           width: 88,
// // // // // // //                           height: 112,
// // // // // // //                           fit: BoxFit.fill,
// // // // // // //                         ),
// // // // // // //                       ],
// // // // // // //                     ),
// // // // // // //                   ],
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               // Bottom Image
// // // // // // //               Container(
// // // // // // //                 margin: const EdgeInsets.only(bottom: 11),
// // // // // // //                 width: double.infinity,
// // // // // // //                 child: SvgPicture.asset(
// // // // // // //                   'assets/login_page/bottom_wave.svg', // Use provided asset
// // // // // // //                   width: 134,
// // // // // // //                   height: 5,
// // // // // // //                   fit: BoxFit.fill,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   void dispose() {
// // // // // // //     _tabController.dispose();
// // // // // // //     super.dispose();
// // // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter_svg/flutter_svg.dart';
// // // // // // import '../assessment/assessment_list.dart';
// // // // // // import '../appointment/appointment_list.dart';

// // // // // // class HomeShell extends StatefulWidget {
// // // // // //   final Widget? child;
// // // // // //   const HomeShell({Key? key, this.child}) : super(key: key);

// // // // // //   @override
// // // // // //   State<HomeShell> createState() => _HomeShellState();
// // // // // // }

// // // // // // class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
// // // // // //   late final TabController _tabController;
// // // // // //   final tabs = ['My Assessments', 'My Appointments'];

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _tabController = TabController(length: tabs.length, vsync: this);
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       body: SafeArea(
// // // // // //         child: SingleChildScrollView(
// // // // // //           child: Column(
// // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //             children: [
// // // // // //               // Top Header
// // // // // //               Container(
// // // // // //                 padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
// // // // // //                 margin: const EdgeInsets.only(top: 8, bottom: 7),
// // // // // //                 width: double.infinity,
// // // // // //                 child: Row(
// // // // // //                   children: [
// // // // // //                     SvgPicture.asset(
// // // // // //                       'assets/home/image1.png',
// // // // // //                       width: 54,
// // // // // //                       height: 21,
// // // // // //                       fit: BoxFit.fill,
// // // // // //                     ),
// // // // // //                     const Spacer(),
// // // // // //                     const Text(
// // // // // //                       'Hello Jane',
// // // // // //                       style: TextStyle(
// // // // // //                         color: Color(0xFF3B63D6),
// // // // // //                         fontSize: 24,
// // // // // //                         fontWeight: FontWeight.bold,
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                     const Spacer(),
// // // // // //                     SvgPicture.asset(
// // // // // //                       'assets/home/image2.png',
// // // // // //                       width: 24,
// // // // // //                       height: 11,
// // // // // //                       fit: BoxFit.fill,
// // // // // //                     ),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ),
// // // // // //               // Toggle Buttons (replacing TabBar)
// // // // // //               Padding(
// // // // // //                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // // // //                 child: Container(
// // // // // //                   decoration: BoxDecoration(
// // // // // //                     borderRadius: BorderRadius.circular(23),
// // // // // //                     color: const Color(0xFFF0F1F8),
// // // // // //                   ),
// // // // // //                   padding: const EdgeInsets.all(5),
// // // // // //                   margin: const EdgeInsets.only(bottom: 12),
// // // // // //                   width: double.infinity,
// // // // // //                   child: Row(
// // // // // //                     children: [
// // // // // //                       InkWell(
// // // // // //                         onTap: () {
// // // // // //                           _tabController.index = 0;
// // // // // //                           setState(() {});
// // // // // //                         },
// // // // // //                         child: Container(
// // // // // //                           decoration: BoxDecoration(
// // // // // //                             borderRadius: BorderRadius.circular(23),
// // // // // //                             color: _tabController.index == 0 ? Colors.white : Colors.transparent,
// // // // // //                           ),
// // // // // //                           padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 11),
// // // // // //                           margin: const EdgeInsets.only(right: 21),
// // // // // //                           child: Text(
// // // // // //                             'My Assessments',
// // // // // //                             style: TextStyle(
// // // // // //                               color: _tabController.index == 0 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// // // // // //                               fontSize: 14,
// // // // // //                               fontWeight: FontWeight.bold,
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                       Expanded(
// // // // // //                         child: InkWell(
// // // // // //                           onTap: () {
// // // // // //                             _tabController.index = 1;
// // // // // //                             setState(() {});
// // // // // //                           },
// // // // // //                           child: Container(
// // // // // //                             width: double.infinity,
// // // // // //                             child: Text(
// // // // // //                               'My Appointments',
// // // // // //                               style: TextStyle(
// // // // // //                                 color: _tabController.index == 1 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// // // // // //                                 fontSize: 14,
// // // // // //                                 fontWeight: FontWeight.bold,
// // // // // //                               ),
// // // // // //                               textAlign: TextAlign.center,
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                     ],
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               // TabBarView with reduced size
// // // // // //               SizedBox(
// // // // // //                 height: MediaQuery.of(context).size.height * 0.4,
// // // // // //                 child: TabBarView(
// // // // // //                   controller: _tabController,
// // // // // //                   children: const [
// // // // // //                     AssessmentListScreen(),
// // // // // //                     AppointmentListScreen(),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ),
// // // // // //               // Challenges Section
// // // // // //               Container(
// // // // // //                 margin: const EdgeInsets.only(bottom: 14, left: 18, right: 18),
// // // // // //                 width: double.infinity,
// // // // // //                 child: Column(
// // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                   children: [
// // // // // //                     Container(
// // // // // //                       margin: const EdgeInsets.only(bottom: 5, left: 18, right: 18),
// // // // // //                       width: double.infinity,
// // // // // //                       child: Row(
// // // // // //                         children: [
// // // // // //                           const Expanded(
// // // // // //                             child: Text(
// // // // // //                               'Challenges',
// // // // // //                               style: TextStyle(
// // // // // //                                 color: Color(0xFF2F2F2F),
// // // // // //                                 fontSize: 14,
// // // // // //                                 fontWeight: FontWeight.bold,
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                           Row(
// // // // // //                             children: [
// // // // // //                               Container(
// // // // // //                                 margin: const EdgeInsets.only(right: 12),
// // // // // //                                 child: const Text(
// // // // // //                                   'View All',
// // // // // //                                   style: TextStyle(
// // // // // //                                     color: Color(0xFF2F2F2F),
// // // // // //                                     fontSize: 12,
// // // // // //                                     fontWeight: FontWeight.bold,
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                               ),
// // // // // //                               SvgPicture.asset(
// // // // // //                                 'assets/home/image1.png',
// // // // // //                                 width: 24,
// // // // // //                                 height: 24,
// // // // // //                                 fit: BoxFit.fill,
// // // // // //                               ),
// // // // // //                             ],  
// // // // // //                           ),
// // // // // //                         ],
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                     Container(
// // // // // //                       decoration: BoxDecoration(
// // // // // //                         borderRadius: BorderRadius.circular(21),
// // // // // //                         color: const Color(0xFFC0E9D1),
// // // // // //                       ),
// // // // // //                       padding: const EdgeInsets.symmetric(vertical: 8),
// // // // // //                       width: double.infinity,
// // // // // //                       child: Column(
// // // // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                         children: [
// // // // // //                           Container(
// // // // // //                             margin: const EdgeInsets.only(left: 17),
// // // // // //                             child: const Text(
// // // // // //                               'Today’s Challenge!',
// // // // // //                               style: TextStyle(
// // // // // //                                 color: Color(0xFF2A7A70),
// // // // // //                                 fontSize: 12,
// // // // // //                                 fontWeight: FontWeight.bold,
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                           Container(
// // // // // //                             margin: const EdgeInsets.only(left: 17),
// // // // // //                             child: Row(
// // // // // //                               children: [
// // // // // //                                 Container(
// // // // // //                                   margin: const EdgeInsets.only(right: 8),
// // // // // //                                   child: Column(
// // // // // //                                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                                     children: [
// // // // // //                                       Container(
// // // // // //                                         decoration: BoxDecoration(
// // // // // //                                           borderRadius: BorderRadius.circular(15),
// // // // // //                                           color: const Color(0xFF2A7A70),
// // // // // //                                         ),
// // // // // //                                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
// // // // // //                                         margin: const EdgeInsets.only(bottom: 8),
// // // // // //                                         child: const Text(
// // // // // //                                           'Push Up 20x',
// // // // // //                                           style: TextStyle(
// // // // // //                                             color: Colors.white,
// // // // // //                                             fontSize: 10,
// // // // // //                                             fontWeight: FontWeight.bold,
// // // // // //                                           ),
// // // // // //                                         ),
// // // // // //                                       ),
// // // // // //                                       Container(
// // // // // //                                         margin: const EdgeInsets.only(bottom: 11),
// // // // // //                                         child: Column(
// // // // // //                                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                                           children: [
// // // // // //                                             Container(
// // // // // //                                               decoration: BoxDecoration(
// // // // // //                                                 borderRadius: BorderRadius.circular(7),
// // // // // //                                                 color: Colors.white,
// // // // // //                                               ),
// // // // // //                                               padding: const EdgeInsets.only(right: 79),
// // // // // //                                               margin: const EdgeInsets.only(bottom: 4),
// // // // // //                                               child: Container(
// // // // // //                                                 decoration: BoxDecoration(
// // // // // //                                                   borderRadius: BorderRadius.circular(7),
// // // // // //                                                   color: const Color(0xFFFF88A4),
// // // // // //                                                 ),
// // // // // //                                                 width: 82,
// // // // // //                                                 height: 9,
// // // // // //                                               ),
// // // // // //                                             ),
// // // // // //                                             const Text(
// // // // // //                                               '10/20 Complete',
// // // // // //                                               style: TextStyle(
// // // // // //                                                 color: Color(0xFF313131),
// // // // // //                                                 fontSize: 10,
// // // // // //                                               ),
// // // // // //                                             ),
// // // // // //                                           ],
// // // // // //                                         ),
// // // // // //                                       ),
// // // // // //                                       Container(
// // // // // //                                         decoration: BoxDecoration(
// // // // // //                                           borderRadius: BorderRadius.circular(15),
// // // // // //                                           color: Colors.white,
// // // // // //                                         ),
// // // // // //                                         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
// // // // // //                                         child: Row(
// // // // // //                                           children: [
// // // // // //                                             const Icon(
// // // // // //                                               Icons.play_arrow,
// // // // // //                                               size: 19,
// // // // // //                                               color: Color(0xFF255FD5),
// // // // // //                                             ),
// // // // // //                                             const SizedBox(width: 9),
// // // // // //                                             Container(
// // // // // //                                               padding: const EdgeInsets.only(bottom: 1),
// // // // // //                                               child: const Text(
// // // // // //                                                 'Continue',
// // // // // //                                                 style: TextStyle(
// // // // // //                                                   color: Color(0xFF255FD5),
// // // // // //                                                   fontSize: 12,
// // // // // //                                                   fontWeight: FontWeight.bold,
// // // // // //                                                 ),
// // // // // //                                               ),
// // // // // //                                             ),
// // // // // //                                           ],
// // // // // //                                         ),
// // // // // //                                       ),
// // // // // //                                     ],
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                                 SvgPicture.asset(
// // // // // //                                   'assets/assement/imgage1.png',
// // // // // //                                   width: 152,
// // // // // //                                   height: 85,
// // // // // //                                   fit: BoxFit.fill,
// // // // // //                                 ),
// // // // // //                               ],
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                         ],
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ),
// // // // // //               // Workout Routines Section
// // // // // //               Container(
// // // // // //                 margin: const EdgeInsets.only(bottom: 6, left: 18),
// // // // // //                 child: Column(
// // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                   children: [
// // // // // //                     Container(
// // // // // //                       margin: const EdgeInsets.only(bottom: 12, left: 18),
// // // // // //                       child: Row(
// // // // // //                         children: [
// // // // // //                           Container(
// // // // // //                             margin: const EdgeInsets.only(right: 103),
// // // // // //                             child: const Text(
// // // // // //                               'Workout Routines',
// // // // // //                               style: TextStyle(
// // // // // //                                 color: Color(0xFF2F2F2F),
// // // // // //                                 fontSize: 14,
// // // // // //                                 fontWeight: FontWeight.bold,
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                           Row(
// // // // // //                             children: [
// // // // // //                               Container(
// // // // // //                                 margin: const EdgeInsets.only(right: 12),
// // // // // //                                 child: const Text(
// // // // // //                                   'View All',
// // // // // //                                   style: TextStyle(
// // // // // //                                     color: Color(0xFF2F2F2F),
// // // // // //                                     fontSize: 12,
// // // // // //                                     fontWeight: FontWeight.bold,
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                               ),
// // // // // //                               SvgPicture.asset(
// // // // // //                                 'assets/home/arrow_black.svg',
// // // // // //                                 width: 24,
// // // // // //                                 height: 24,
// // // // // //                                 fit: BoxFit.fill,
// // // // // //                               ),
// // // // // //                             ],
// // // // // //                           ),
// // // // // //                         ],
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                     Row(
// // // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                       children: [
// // // // // //                         Container(
// // // // // //                           decoration: BoxDecoration(
// // // // // //                             border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // // // // //                             borderRadius: BorderRadius.circular(21),
// // // // // //                           ),
// // // // // //                           padding: const EdgeInsets.all(1),
// // // // // //                           margin: const EdgeInsets.only(right: 19),
// // // // // //                           child: Row(
// // // // // //                             children: [
// // // // // //                               SvgPicture.asset(
// // // // // //                                 'assets/home/image2.png',
// // // // // //                                 width: 109,
// // // // // //                                 height: 110,
// // // // // //                                 fit: BoxFit.fill,
// // // // // //                               ),
// // // // // //                               const SizedBox(width: 19),
// // // // // //                               Column(
// // // // // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                                 children: [
// // // // // //                                   Container(
// // // // // //                                     margin: const EdgeInsets.only(bottom: 3),
// // // // // //                                     child: const Text(
// // // // // //                                       'Sweat Starter',
// // // // // //                                       style: TextStyle(
// // // // // //                                         color: Color(0xFF2F2F2F),
// // // // // //                                         fontSize: 14,
// // // // // //                                         fontWeight: FontWeight.bold,
// // // // // //                                       ),
// // // // // //                                     ),
// // // // // //                                   ),
// // // // // //                                   Container(
// // // // // //                                     margin: const EdgeInsets.only(bottom: 11),
// // // // // //                                     child: const Text(
// // // // // //                                       'Full Body',
// // // // // //                                       style: TextStyle(
// // // // // //                                         color: Color(0xFF666666),
// // // // // //                                         fontSize: 10,
// // // // // //                                       ),
// // // // // //                                     ),
// // // // // //                                   ),
// // // // // //                                   InkWell(
// // // // // //                                     onTap: () {
// // // // // //                                       print('Lose Weight Pressed');
// // // // // //                                     },
// // // // // //                                     child: Container(
// // // // // //                                       decoration: BoxDecoration(
// // // // // //                                         border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // // // // //                                         borderRadius: BorderRadius.circular(21),
// // // // // //                                       ),
// // // // // //                                       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
// // // // // //                                       margin: const EdgeInsets.only(bottom: 11),
// // // // // //                                       child: const Text(
// // // // // //                                         'Lose Weight',
// // // // // //                                         style: TextStyle(
// // // // // //                                           color: Color(0xFF255FD5),
// // // // // //                                           fontSize: 8,
// // // // // //                                           fontWeight: FontWeight.bold,
// // // // // //                                         ),
// // // // // //                                       ),
// // // // // //                                     ),
// // // // // //                                   ),
// // // // // //                                   const Text(
// // // // // //                                     'Difficulty: Medium',
// // // // // //                                     style: TextStyle(
// // // // // //                                       color: Color(0xFF666666),
// // // // // //                                       fontSize: 10,
// // // // // //                                     ),
// // // // // //                                   ),
// // // // // //                                 ],
// // // // // //                               ),
// // // // // //                             ],
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                         SvgPicture.asset(
// // // // // //                           'assets/home/image1.png',
// // // // // //                           width: 88,
// // // // // //                           height: 112,
// // // // // //                           fit: BoxFit.fill,
// // // // // //                         ),
// // // // // //                       ],
// // // // // //                     ),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ),
// // // // // //               // Bottom Image
// // // // // //               Container(
// // // // // //                 margin: const EdgeInsets.only(bottom: 11),
// // // // // //                 width: double.infinity,
// // // // // //                 child: SvgPicture.asset(
// // // // // //                   'assets/home/image2.png',
// // // // // //                   width: 134,
// // // // // //                   height: 5,
// // // // // //                   fit: BoxFit.fill,
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ],
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   @override
// // // // // //   void dispose() {
// // // // // //     _tabController.dispose();
// // // // // //     super.dispose();
// // // // // //   }
// // // // // // }


// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:flutter_svg/flutter_svg.dart';
// // // // // import '../assessment/assessment_list.dart';
// // // // // import '../appointment/appointment_list.dart';

// // // // // class HomeShell extends StatefulWidget {
// // // // //   final Widget? child;
// // // // //   const HomeShell({Key? key, this.child}) : super(key: key);

// // // // //   @override
// // // // //   State<HomeShell> createState() => _HomeShellState();
// // // // // }

// // // // // class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
// // // // //   late final TabController _tabController;
// // // // //   final tabs = ['My Assessments', 'My Appointments'];

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _tabController = TabController(length: tabs.length, vsync: this);
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       body: SafeArea(
// // // // //         child: SingleChildScrollView(
// // // // //           child: Column(
// // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // //             children: [
// // // // //               // Top Header
// // // // //               Container(
// // // // //                 padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
// // // // //                 margin: const EdgeInsets.only(top: 8, bottom: 7),
// // // // //                 width: double.infinity,
// // // // //                 child: Row(
// // // // //                   children: [
// // // // //                     Container(
// // // // //                       decoration: BoxDecoration(
// // // // //                         color: Colors.green.withOpacity(0.5), // Green background
// // // // //                       ),
// // // // //                       child: SvgPicture.asset(
// // // // //                         'assets/home/image1.png',
// // // // //                         width: 54,
// // // // //                         height: 21,
// // // // //                         fit: BoxFit.fill,
// // // // //                       ),
// // // // //                     ),
// // // // //                     const Spacer(),
// // // // //                     const Text(
// // // // //                       'Hello Jane',
// // // // //                       style: TextStyle(
// // // // //                         color: Color(0xFF3B63D6),
// // // // //                         fontSize: 24,
// // // // //                         fontWeight: FontWeight.bold,
// // // // //                       ),
// // // // //                     ),
// // // // //                     const Spacer(),
// // // // //                     Container(
// // // // //                       decoration: BoxDecoration(
// // // // //                         color: Colors.green.withOpacity(0.5), // Green background
// // // // //                       ),
// // // // //                       child: SvgPicture.asset(
// // // // //                         'assets/home/image2.png',
// // // // //                         width: 24,
// // // // //                         height: 11,
// // // // //                         fit: BoxFit.fill,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
// // // // //               // Toggle Buttons (replacing TabBar)
// // // // //               Padding(
// // // // //                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // // //                 child: Container(
// // // // //                   decoration: BoxDecoration(
// // // // //                     borderRadius: BorderRadius.circular(23),
// // // // //                     color: const Color(0xFFF0F1F8),
// // // // //                   ),
// // // // //                   padding: const EdgeInsets.all(5),
// // // // //                   margin: const EdgeInsets.only(bottom: 12),
// // // // //                   width: double.infinity,
// // // // //                   child: Row(
// // // // //                     children: [
// // // // //                       InkWell(
// // // // //                         onTap: () {
// // // // //                           _tabController.index = 0;
// // // // //                           setState(() {});
// // // // //                         },
// // // // //                         child: Container(
// // // // //                           decoration: BoxDecoration(
// // // // //                             borderRadius: BorderRadius.circular(23),
// // // // //                             color: _tabController.index == 0 ? Colors.white : Colors.transparent,
// // // // //                           ),
// // // // //                           padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 11),
// // // // //                           margin: const EdgeInsets.only(right: 21),
// // // // //                           child: Text(
// // // // //                             'My Assessments',
// // // // //                             style: TextStyle(
// // // // //                               color: _tabController.index == 0 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// // // // //                               fontSize: 14,
// // // // //                               fontWeight: FontWeight.bold,
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                       ),
// // // // //                       Expanded(
// // // // //                         child: InkWell(
// // // // //                           onTap: () {
// // // // //                             _tabController.index = 1;
// // // // //                             setState(() {});
// // // // //                           },
// // // // //                           child: Container(
// // // // //                             width: double.infinity,
// // // // //                             child: Text(
// // // // //                               'My Appointments',
// // // // //                               style: TextStyle(
// // // // //                                 color: _tabController.index == 1 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// // // // //                                 fontSize: 14,
// // // // //                                 fontWeight: FontWeight.bold,
// // // // //                               ),
// // // // //                               textAlign: TextAlign.center,
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //               // TabBarView with reduced size
// // // // //               SizedBox(
// // // // //                 height: MediaQuery.of(context).size.height * 0.4,
// // // // //                 child: TabBarView(
// // // // //                   controller: _tabController,
// // // // //                   children: const [
// // // // //                     AssessmentListScreen(),
// // // // //                     AppointmentListScreen(),
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
// // // // //               // Challenges Section
// // // // //               Container(
// // // // //                 margin: const EdgeInsets.only(bottom: 14, left: 18, right: 18),
// // // // //                 width: double.infinity,
// // // // //                 child: Column(
// // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                   children: [
// // // // //                     Container(
// // // // //                       margin: const EdgeInsets.only(bottom: 5, left: 18, right: 18),
// // // // //                       width: double.infinity,
// // // // //                       child: Row(
// // // // //                         children: [
// // // // //                           const Expanded(
// // // // //                             child: Text(
// // // // //                               'Challenges',
// // // // //                               style: TextStyle(
// // // // //                                 color: Color(0xFF2F2F2F),
// // // // //                                 fontSize: 14,
// // // // //                                 fontWeight: FontWeight.bold,
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                           Row(
// // // // //                             children: [
// // // // //                               Container(
// // // // //                                 margin: const EdgeInsets.only(right: 12),
// // // // //                                 child: const Text(
// // // // //                                   'View All',
// // // // //                                   style: TextStyle(
// // // // //                                     color: Color(0xFF2F2F2F),
// // // // //                                     fontSize: 12,
// // // // //                                     fontWeight: FontWeight.bold,
// // // // //                                   ),
// // // // //                                 ),
// // // // //                               ),
// // // // //                               Container(
// // // // //                                 decoration: BoxDecoration(
// // // // //                                   color: Colors.green.withOpacity(0.5), // Green background
// // // // //                                 ),
// // // // //                                 child: SvgPicture.asset(
// // // // //                                   'assets/home/image1.png',
// // // // //                                   width: 24,
// // // // //                                   height: 24,
// // // // //                                   fit: BoxFit.fill,
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ],
// // // // //                           ),
// // // // //                         ],
// // // // //                       ),
// // // // //                     ),
// // // // //                     Container(
// // // // //                       decoration: BoxDecoration(
// // // // //                         borderRadius: BorderRadius.circular(21),
// // // // //                         color: const Color(0xFFC0E9D1),
// // // // //                       ),
// // // // //                       padding: const EdgeInsets.symmetric(vertical: 8),
// // // // //                       width: double.infinity,
// // // // //                       child: Column(
// // // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                         children: [
// // // // //                           Container(
// // // // //                             margin: const EdgeInsets.only(left: 17),
// // // // //                             child: const Text(
// // // // //                               'Today’s Challenge!',
// // // // //                               style: TextStyle(
// // // // //                                 color: Color(0xFF2A7A70),
// // // // //                                 fontSize: 12,
// // // // //                                 fontWeight: FontWeight.bold,
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                           Container(
// // // // //                             margin: const EdgeInsets.only(left: 17),
// // // // //                             child: Row(
// // // // //                               children: [
// // // // //                                 Container(
// // // // //                                   margin: const EdgeInsets.only(right: 8),
// // // // //                                   child: Column(
// // // // //                                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                                     children: [
// // // // //                                       Container(
// // // // //                                         decoration: BoxDecoration(
// // // // //                                           borderRadius: BorderRadius.circular(15),
// // // // //                                           color: const Color(0xFF2A7A70),
// // // // //                                         ),
// // // // //                                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
// // // // //                                         margin: const EdgeInsets.only(bottom: 8),
// // // // //                                         child: const Text(
// // // // //                                           'Push Up 20x',
// // // // //                                           style: TextStyle(
// // // // //                                             color: Colors.white,
// // // // //                                             fontSize: 10,
// // // // //                                             fontWeight: FontWeight.bold,
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                       Container(
// // // // //                                         margin: const EdgeInsets.only(bottom: 11),
// // // // //                                         child: Column(
// // // // //                                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                                           children: [
// // // // //                                             Container(
// // // // //                                               decoration: BoxDecoration(
// // // // //                                                 borderRadius: BorderRadius.circular(7),
// // // // //                                                 color: Colors.white,
// // // // //                                               ),
// // // // //                                               padding: const EdgeInsets.only(right: 79),
// // // // //                                               margin: const EdgeInsets.only(bottom: 4),
// // // // //                                               child: Container(
// // // // //                                                 decoration: BoxDecoration(
// // // // //                                                   borderRadius: BorderRadius.circular(7),
// // // // //                                                   color: const Color(0xFFFF88A4),
// // // // //                                                 ),
// // // // //                                                 width: 82,
// // // // //                                                 height: 9,
// // // // //                                               ),
// // // // //                                             ),
// // // // //                                             const Text(
// // // // //                                               '10/20 Complete',
// // // // //                                               style: TextStyle(
// // // // //                                                 color: Color(0xFF313131),
// // // // //                                                 fontSize: 10,
// // // // //                                               ),
// // // // //                                             ),
// // // // //                                           ],
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                       Container(
// // // // //                                         decoration: BoxDecoration(
// // // // //                                           borderRadius: BorderRadius.circular(15),
// // // // //                                           color: Colors.white,
// // // // //                                         ),
// // // // //                                         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
// // // // //                                         child: Row(
// // // // //                                           children: [
// // // // //                                             const Icon(
// // // // //                                               Icons.play_arrow,
// // // // //                                               size: 19,
// // // // //                                               color: Color(0xFF255FD5),
// // // // //                                             ),
// // // // //                                             const SizedBox(width: 9),
// // // // //                                             Container(
// // // // //                                               padding: const EdgeInsets.only(bottom: 1),
// // // // //                                               child: const Text(
// // // // //                                                 'Continue',
// // // // //                                                 style: TextStyle(
// // // // //                                                   color: Color(0xFF255FD5),
// // // // //                                                   fontSize: 12,
// // // // //                                                   fontWeight: FontWeight.bold,
// // // // //                                                 ),
// // // // //                                               ),
// // // // //                                             ),
// // // // //                                           ],
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                     ],
// // // // //                                   ),
// // // // //                                 ),
// // // // //                                 Container(
// // // // //                                   decoration: BoxDecoration(
// // // // //                                     color: Colors.green.withOpacity(0.5), // Green background
// // // // //                                   ),
// // // // //                                   child: SvgPicture.asset(
// // // // //                                     'assets/assement/imgage1.png',
// // // // //                                     width: 152,
// // // // //                                     height: 85,
// // // // //                                     fit: BoxFit.fill,
// // // // //                                   ),
// // // // //                                 ),
// // // // //                               ],
// // // // //                             ),
// // // // //                           ),
// // // // //                         ],
// // // // //                       ),
// // // // //                     ),
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
// // // // //               // Workout Routines Section
// // // // //               Container(
// // // // //                 margin: const EdgeInsets.only(bottom: 6, left: 18),
// // // // //                 child: Column(
// // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                   children: [
// // // // //                     Container(
// // // // //                       margin: const EdgeInsets.only(bottom: 12, left: 18),
// // // // //                       child: Row(
// // // // //                         children: [
// // // // //                           Container(
// // // // //                             margin: const EdgeInsets.only(right: 103),
// // // // //                             child: const Text(
// // // // //                               'Workout Routines',
// // // // //                               style: TextStyle(
// // // // //                                 color: Color(0xFF2F2F2F),
// // // // //                                 fontSize: 14,
// // // // //                                 fontWeight: FontWeight.bold,
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                           Row(
// // // // //                             children: [
// // // // //                               Container(
// // // // //                                 margin: const EdgeInsets.only(right: 12),
// // // // //                                 child: const Text(
// // // // //                                   'View All',
// // // // //                                   style: TextStyle(
// // // // //                                     color: Color(0xFF2F2F2F),
// // // // //                                     fontSize: 12,
// // // // //                                     fontWeight: FontWeight.bold,
// // // // //                                   ),
// // // // //                                 ),
// // // // //                               ),
// // // // //                               Container(
// // // // //                                 decoration: BoxDecoration(
// // // // //                                   color: Colors.green.withOpacity(0.5), // Green background
// // // // //                                 ),
// // // // //                                 child: SvgPicture.asset(
// // // // //                                   'assets/home/arrow_black.svg',
// // // // //                                   width: 24,
// // // // //                                   height: 24,
// // // // //                                   fit: BoxFit.fill,
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ],
// // // // //                           ),
// // // // //                         ],
// // // // //                       ),
// // // // //                     ),
// // // // //                     Row(
// // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                       children: [
// // // // //                         Container(
// // // // //                           decoration: BoxDecoration(
// // // // //                             border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // // // //                             borderRadius: BorderRadius.circular(21),
// // // // //                           ),
// // // // //                           padding: const EdgeInsets.all(1),
// // // // //                           margin: const EdgeInsets.only(right: 19),
// // // // //                           child: Row(
// // // // //                             children: [
// // // // //                               Container(
// // // // //                                 decoration: BoxDecoration(
// // // // //                                   color: Colors.green.withOpacity(0.5), // Green background
// // // // //                                 ),
// // // // //                                 child: SvgPicture.asset(
// // // // //                                   'assets/home/image2.png',
// // // // //                                   width: 109,
// // // // //                                   height: 110,
// // // // //                                   fit: BoxFit.fill,
// // // // //                                 ),
// // // // //                               ),
// // // // //                               const SizedBox(width: 19),
// // // // //                               Column(
// // // // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                                 children: [
// // // // //                                   Container(
// // // // //                                     margin: const EdgeInsets.only(bottom: 3),
// // // // //                                     child: const Text(
// // // // //                                       'Sweat Starter',
// // // // //                                       style: TextStyle(
// // // // //                                         color: Color(0xFF2F2F2F),
// // // // //                                         fontSize: 14,
// // // // //                                         fontWeight: FontWeight.bold,
// // // // //                                       ),
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   Container(
// // // // //                                     margin: const EdgeInsets.only(bottom: 11),
// // // // //                                     child: const Text(
// // // // //                                       'Full Body',
// // // // //                                       style: TextStyle(
// // // // //                                         color: Color(0xFF666666),
// // // // //                                         fontSize: 10,
// // // // //                                       ),
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   InkWell(
// // // // //                                     onTap: () {
// // // // //                                       print('Lose Weight Pressed');
// // // // //                                     },
// // // // //                                     child: Container(
// // // // //                                       decoration: BoxDecoration(
// // // // //                                         border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // // // //                                         borderRadius: BorderRadius.circular(21),
// // // // //                                       ),
// // // // //                                       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
// // // // //                                       margin: const EdgeInsets.only(bottom: 11),
// // // // //                                       child: const Text(
// // // // //                                         'Lose Weight',
// // // // //                                         style: TextStyle(
// // // // //                                           color: Color(0xFF255FD5),
// // // // //                                           fontSize: 8,
// // // // //                                           fontWeight: FontWeight.bold,
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   const Text(
// // // // //                                     'Difficulty: Medium',
// // // // //                                     style: TextStyle(
// // // // //                                       color: Color(0xFF666666),
// // // // //                                       fontSize: 10,
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             ],
// // // // //                           ),
// // // // //                         ),
// // // // //                         Container(
// // // // //                           decoration: BoxDecoration(
// // // // //                             color: Colors.green.withOpacity(0.5), // Green background
// // // // //                           ),
// // // // //                           child: SvgPicture.asset(
// // // // //                             'assets/home/image1.png',
// // // // //                             width: 88,
// // // // //                             height: 112,
// // // // //                             fit: BoxFit.fill,
// // // // //                           ),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
// // // // //               // Bottom Image
// // // // //               Container(
// // // // //                 margin: const EdgeInsets.only(bottom: 11),
// // // // //                 width: double.infinity,
// // // // //                 child: Container(
// // // // //                   decoration: BoxDecoration(
// // // // //                     color: Colors.green.withOpacity(0.5), // Green background
// // // // //                   ),
// // // // //                   child: SvgPicture.asset(
// // // // //                     'assets/home/image2.png',
// // // // //                     width: 134,
// // // // //                     height: 5,
// // // // //                     fit: BoxFit.fill,
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     _tabController.dispose();
// // // // //     super.dispose();
// // // // //   }
// // // // // }


// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_svg/flutter_svg.dart';
// // // // import '../assessment/assessment_list.dart';
// // // // import '../appointment/appointment_list.dart';

// // // // class HomeShell extends StatefulWidget {
// // // //   final Widget? child;
// // // //   const HomeShell({Key? key, this.child}) : super(key: key);

// // // //   @override
// // // //   State<HomeShell> createState() => _HomeShellState();
// // // // }

// // // // class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
// // // //   late final TabController _tabController;
// // // //   final tabs = ['My Assessments', 'My Appointments'];

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _tabController = TabController(length: tabs.length, vsync: this);
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       body: SafeArea(
// // // //         child: SingleChildScrollView(
// // // //           child: Column(
// // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // //             children: [
// // // //               // Top Header
// // // //               Container(
// // // //                 padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
// // // //                 margin: const EdgeInsets.only(top: 8, bottom: 7),
// // // //                 width: double.infinity,
// // // //                 child: Row(
// // // //                   children: [
            
// // // //                     const SizedBox(width: 10), // Spacing between icon and text
// // // //                     const Text(
// // // //                       'Hello Jane',
// // // //                       style: TextStyle(
// // // //                         color: Color(0xFF3B63D6),
// // // //                         fontSize: 24,
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                     ),
// // // //                     const Spacer(),
// // // //                     const Icon(
// // // //                       Icons.account_circle_outlined , // Account icon on the right
// // // //                       size: 54,
// // // //                       color: Colors.black,
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //               // Toggle Buttons (replacing TabBar)
// // // //               Padding(
// // // //                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // //                 child: Container(
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: BorderRadius.circular(23),
// // // //                     color: const Color(0xFFF0F1F8),
// // // //                   ),
// // // //                   padding: const EdgeInsets.all(5),
// // // //                   margin: const EdgeInsets.only(bottom: 12),
// // // //                   width: double.infinity,
// // // //                   child: Row(
// // // //                     children: [
// // // //                       InkWell(
// // // //                         onTap: () {
// // // //                           _tabController.index = 0;
// // // //                           setState(() {});
// // // //                         },
// // // //                         child: Container(
// // // //                           decoration: BoxDecoration(
// // // //                             borderRadius: BorderRadius.circular(23),
// // // //                             color: _tabController.index == 0 ? Colors.white : Colors.transparent,
// // // //                           ),
// // // //                           padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 11),
// // // //                           margin: const EdgeInsets.only(right: 21),
// // // //                           child: Text(
// // // //                             'My Assessments',
// // // //                             style: TextStyle(
// // // //                               color: _tabController.index == 0 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// // // //                               fontSize: 14,
// // // //                               fontWeight: FontWeight.bold,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                       Expanded(
// // // //                         child: InkWell(
// // // //                           onTap: () {
// // // //                             _tabController.index = 1;
// // // //                             setState(() {});
// // // //                           },
// // // //                           child: Container(
// // // //                             width: double.infinity,
// // // //                             child: Text(
// // // //                               'My Appointments',
// // // //                               style: TextStyle(
// // // //                                 color: _tabController.index == 1 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// // // //                                 fontSize: 14,
// // // //                                 fontWeight: FontWeight.bold,
// // // //                               ),
// // // //                               textAlign: TextAlign.center,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //               // TabBarView with reduced size
// // // //               SizedBox(
// // // //                 height: MediaQuery.of(context).size.height * 0.4,
// // // //                 child: TabBarView(
// // // //                   controller: _tabController,
// // // //                   children: const [
// // // //                     AssessmentListScreen(),
// // // //                     AppointmentListScreen(),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //               // Challenges Section
// // // //               Container(
// // // //                 margin: const EdgeInsets.only(bottom: 14, left: 18, right: 18),
// // // //                 width: double.infinity,
// // // //                 child: Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                   children: [
// // // //                     Container(
// // // //                       margin: const EdgeInsets.only(bottom: 5, left: 18, right: 18),
// // // //                       width: double.infinity,
// // // //                       child: Row(
// // // //                         children: [
// // // //                           const Expanded(
// // // //                             child: Text(
// // // //                               'Challenges',
// // // //                               style: TextStyle(
// // // //                                 color: Color(0xFF2F2F2F),
// // // //                                 fontSize: 14,
// // // //                                 fontWeight: FontWeight.bold,
// // // //                               ),
// // // //                             ),
// // // //                           ),
// // // //                           Row(
// // // //                             children: [
// // // //                               Container(
// // // //                                 margin: const EdgeInsets.only(right: 12),
// // // //                                 child: const Text(
// // // //                                   'View All',
// // // //                                   style: TextStyle(
// // // //                                     color: Color(0xFF2F2F2F),
// // // //                                     fontSize: 12,
// // // //                                     fontWeight: FontWeight.bold,
// // // //                                   ),
// // // //                                 ),
// // // //                               ),
// // // //                               const Icon(
// // // //                                 Icons.arrow_forward,
// // // //                                 size: 24,
// // // //                                 color: Color(0xFF2F2F2F),
// // // //                               ),
// // // //                             ],
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                     Container(
// // // //                       decoration: BoxDecoration(
// // // //                         borderRadius: BorderRadius.circular(21),
// // // //                         color: const Color(0xFFC0E9D1),
// // // //                       ),
// // // //                       padding: const EdgeInsets.symmetric(vertical: 8),
// // // //                       width: double.infinity,
// // // //                       child: Column(
// // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // //                         children: [
// // // //                           Container(
// // // //                             margin: const EdgeInsets.only(left: 17),
// // // //                             child: const Text(
// // // //                               'Today’s Challenge!',
// // // //                               style: TextStyle(
// // // //                                 color: Color(0xFF2A7A70),
// // // //                                 fontSize: 12,
// // // //                                 fontWeight: FontWeight.bold,
// // // //                               ),
// // // //                             ),
// // // //                           ),
// // // //                           Container(
// // // //                             margin: const EdgeInsets.only(left: 17),
// // // //                             child: Row(
// // // //                               children: [
// // // //                                 Container(
// // // //                                   margin: const EdgeInsets.only(right: 8),
// // // //                                   child: Column(
// // // //                                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                                     children: [
// // // //                                       Container(
// // // //                                         decoration: BoxDecoration(
// // // //                                           borderRadius: BorderRadius.circular(15),
// // // //                                           color: const Color(0xFF2A7A70),
// // // //                                         ),
// // // //                                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
// // // //                                         margin: const EdgeInsets.only(bottom: 8),
// // // //                                         child: const Text(
// // // //                                           'Push Up 20x',
// // // //                                           style: TextStyle(
// // // //                                             color: Colors.white,
// // // //                                             fontSize: 10,
// // // //                                             fontWeight: FontWeight.bold,
// // // //                                           ),
// // // //                                         ),
// // // //                                       ),
// // // //                                       Container(
// // // //                                         margin: const EdgeInsets.only(bottom: 11),
// // // //                                         child: Column(
// // // //                                           crossAxisAlignment: CrossAxisAlignment.start,
// // // //                                           children: [
// // // //                                             Container(
// // // //                                               decoration: BoxDecoration(
// // // //                                                 borderRadius: BorderRadius.circular(7),
// // // //                                                 color: Colors.white,
// // // //                                               ),
// // // //                                               padding: const EdgeInsets.only(right: 79),
// // // //                                               margin: const EdgeInsets.only(bottom: 4),
// // // //                                               child: Container(
// // // //                                                 decoration: BoxDecoration(
// // // //                                                   borderRadius: BorderRadius.circular(7),
// // // //                                                   color: const Color(0xFFFF88A4),
// // // //                                                 ),
// // // //                                                 width: 82,
// // // //                                                 height: 9,
// // // //                                               ),
// // // //                                             ),
// // // //                                             const Text(
// // // //                                               '10/20 Complete',
// // // //                                               style: TextStyle(
// // // //                                                 color: Color(0xFF313131),
// // // //                                                 fontSize: 10,
// // // //                                               ),
// // // //                                             ),
// // // //                                           ],
// // // //                                         ),
// // // //                                       ),
// // // //                                       Container(
// // // //                                         decoration: BoxDecoration(
// // // //                                           borderRadius: BorderRadius.circular(15),
// // // //                                           color: Colors.white,
// // // //                                         ),
// // // //                                         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
// // // //                                         child: Row(
// // // //                                           children: [
// // // //                                             const Icon(
// // // //                                               Icons.play_arrow,
// // // //                                               size: 19,
// // // //                                               color: Color(0xFF255FD5),
// // // //                                             ),
// // // //                                             const SizedBox(width: 9),
// // // //                                             Container(
// // // //                                               padding: const EdgeInsets.only(bottom: 1),
// // // //                                               child: const Text(
// // // //                                                 'Continue',
// // // //                                                 style: TextStyle(
// // // //                                                   color: Color(0xFF255FD5),
// // // //                                                   fontSize: 12,
// // // //                                                   fontWeight: FontWeight.bold,
// // // //                                                 ),
// // // //                                               ),
// // // //                                             ),
// // // //                                           ],
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                 ),
// // // //                                 Container(
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.green.withOpacity(0.5),
// // // //                                   ),
// // // //                                   child: SvgPicture.asset(
// // // //                                     'assets/assement/imgage1.png',
// // // //                                     width: 152,
// // // //                                     height: 85,
// // // //                                     fit: BoxFit.fill,
// // // //                                   ),
// // // //                                 ),
// // // //                               ],
// // // //                             ),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //               // Workout Routines Section
// // // //               Container(
// // // //                 margin: const EdgeInsets.only(bottom: 6, left: 18),
// // // //                 child: Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                   children: [
// // // //                     Container(
// // // //                       margin: const EdgeInsets.only(bottom: 12, left: 18),
// // // //                       child: Row(
// // // //                         children: [
// // // //                           Container(
// // // //                             margin: const EdgeInsets.only(right: 103),
// // // //                             child: const Text(
// // // //                               'Workout Routines',
// // // //                               style: TextStyle(
// // // //                                 color: Color(0xFF2F2F2F),
// // // //                                 fontSize: 14,
// // // //                                 fontWeight: FontWeight.bold,
// // // //                               ),
// // // //                             ),
// // // //                           ),
// // // //                           Row(
// // // //                             children: [
// // // //                               Container(
// // // //                                 margin: const EdgeInsets.only(right: 12),
// // // //                                 child: const Text(
// // // //                                   'View All',
// // // //                                   style: TextStyle(
// // // //                                     color: Color(0xFF2F2F2F),
// // // //                                     fontSize: 12,
// // // //                                     fontWeight: FontWeight.bold,
// // // //                                   ),
// // // //                                 ),
// // // //                               ),
// // // //                               const Icon(
// // // //                                 Icons.arrow_forward,
// // // //                                 size: 24,
// // // //                                 color: Color(0xFF2F2F2F),
// // // //                               ),
// // // //                             ],
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                     Row(
// // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // //                       children: [
// // // //                         Container(
// // // //                           decoration: BoxDecoration(
// // // //                             border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // // //                             borderRadius: BorderRadius.circular(21),
// // // //                           ),
// // // //                           padding: const EdgeInsets.all(1),
// // // //                           margin: const EdgeInsets.only(right: 19),
// // // //                           child: Row(
// // // //                             children: [
// // // //                               Container(
// // // //                                 decoration: BoxDecoration(
// // // //                                   color: Colors.green.withOpacity(0.5),
// // // //                                 ),
// // // //                                 child: SvgPicture.asset(
// // // //                                   'assets/home/image2.png',
// // // //                                   width: 109,
// // // //                                   height: 110,
// // // //                                   fit: BoxFit.fill,
// // // //                                 ),
// // // //                               ),
// // // //                               const SizedBox(width: 19),
// // // //                               Column(
// // // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // // //                                 children: [
// // // //                                   Container(
// // // //                                     margin: const EdgeInsets.only(bottom: 3),
// // // //                                     child: const Text(
// // // //                                       'Sweat Starter',
// // // //                                       style: TextStyle(
// // // //                                         color: Color(0xFF2F2F2F),
// // // //                                         fontSize: 14,
// // // //                                         fontWeight: FontWeight.bold,
// // // //                                       ),
// // // //                                     ),
// // // //                                   ),
// // // //                                   Container(
// // // //                                     margin: const EdgeInsets.only(bottom: 11),
// // // //                                     child: const Text(
// // // //                                       'Full Body',
// // // //                                       style: TextStyle(
// // // //                                         color: Color(0xFF666666),
// // // //                                         fontSize: 10,
// // // //                                       ),
// // // //                                     ),
// // // //                                   ),
// // // //                                   InkWell(
// // // //                                     onTap: () {
// // // //                                       print('Lose Weight Pressed');
// // // //                                     },
// // // //                                     child: Container(
// // // //                                       decoration: BoxDecoration(
// // // //                                         border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // // //                                         borderRadius: BorderRadius.circular(21),
// // // //                                       ),
// // // //                                       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
// // // //                                       margin: const EdgeInsets.only(bottom: 11),
// // // //                                       child: const Text(
// // // //                                         'Lose Weight',
// // // //                                         style: TextStyle(
// // // //                                           color: Color(0xFF255FD5),
// // // //                                           fontSize: 8,
// // // //                                           fontWeight: FontWeight.bold,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ),
// // // //                                   ),
// // // //                                   const Text(
// // // //                                     'Difficulty: Medium',
// // // //                                     style: TextStyle(
// // // //                                       color: Color(0xFF666666),
// // // //                                       fontSize: 10,
// // // //                                     ),
// // // //                                   ),
// // // //                                 ],
// // // //                               ),
// // // //                             ],
// // // //                           ),
// // // //                         ),
// // // //                         Container(
// // // //                           decoration: BoxDecoration(
// // // //                             color: Colors.green.withOpacity(0.5),
// // // //                           ),
// // // //                           child: SvgPicture.asset(
// // // //                             'assets/home/image1.png',
// // // //                             width: 88,
// // // //                             height: 112,
// // // //                             fit: BoxFit.fill,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //               // Bottom Image
// // // //               Container(
// // // //                 margin: const EdgeInsets.only(bottom: 11),
// // // //                 width: double.infinity,
// // // //                 child: Container(
// // // //                   decoration: BoxDecoration(
// // // //                     color: Colors.green.withOpacity(0.5),
// // // //                   ),
// // // //                   child: SvgPicture.asset(
// // // //                     'assets/home/image2.png',
// // // //                     width: 134,
// // // //                     height: 5,
// // // //                     fit: BoxFit.fill,
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _tabController.dispose();
// // // //     super.dispose();
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_svg/flutter_svg.dart';
// // // import '../assessment/assessment_list.dart';
// // // import '../appointment/appointment_list.dart';

// // // class HomeShell extends StatefulWidget {
// // //   final Widget? child;
// // //   const HomeShell({Key? key, this.child}) : super(key: key);

// // //   @override
// // //   State<HomeShell> createState() => _HomeShellState();
// // // }

// // // class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
// // //   late final TabController _tabController;
// // //   final tabs = ['My Assessments', 'My Appointments'];

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _tabController = TabController(length: tabs.length, vsync: this);
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: SafeArea(
// // //         child: SingleChildScrollView(
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               // Top Header
// // //               Container(
// // //                 padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
// // //                 margin: const EdgeInsets.only(top: 8, bottom: 7),
// // //                 width: double.infinity,
// // //                 child: Row(
// // //                   children: [
// // //                     const SizedBox(width: 10), // Spacing between icon and text
// // //                     const Text(
// // //                       'Hello Jane',
// // //                       style: TextStyle(
// // //                         color: Color(0xFF3B63D6),
// // //                         fontSize: 24,
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
// // //                     const Spacer(),
// // //                     const Icon(
// // //                       Icons.account_circle_outlined, // Account icon on the right
// // //                       size: 32,
// // //                       color: Colors.black,
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //               // Toggle Buttons (replacing TabBar)
// // //               Padding(
// // //                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // //                 child: Container(
// // //                   decoration: BoxDecoration(
// // //                     borderRadius: BorderRadius.circular(23),
// // //                     color: const Color(0xFFF0F1F8),
// // //                   ),
// // //                   padding: const EdgeInsets.all(5),
// // //                   margin: const EdgeInsets.only(bottom: 12),
// // //                   width: double.infinity,
// // //                   child: Row(
// // //                     children: [
// // //                       InkWell(
// // //                         onTap: () {
// // //                           _tabController.index = 0;
// // //                           setState(() {});
// // //                         },
// // //                         child: Container(
// // //                           decoration: BoxDecoration(
// // //                             borderRadius: BorderRadius.circular(23),
// // //                             color: _tabController.index == 0 ? Colors.white : Colors.transparent,
// // //                           ),
// // //                           padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 11),
// // //                           margin: const EdgeInsets.only(right: 21),
// // //                           child: Text(
// // //                             'My Assessments',
// // //                             style: TextStyle(
// // //                               color: _tabController.index == 0 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// // //                               fontSize: 14,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                       Expanded(
// // //                         child: InkWell(
// // //                           onTap: () {
// // //                             _tabController.index = 1;
// // //                             setState(() {});
// // //                           },
// // //                           child: Container(
// // //                             width: double.infinity,
// // //                             child: Text(
// // //                               'My Appointments',
// // //                               style: TextStyle(
// // //                                 color: _tabController.index == 1 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// // //                                 fontSize: 14,
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                               textAlign: TextAlign.center,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               ),
// // //               // TabBarView with reduced size
// // //               SizedBox(
// // //                 height: MediaQuery.of(context).size.height * 0.4,
// // //                 child: TabBarView(
// // //                   controller: _tabController,
// // //                   children: const [
// // //                     AssessmentListScreen(),
// // //                     AppointmentListScreen(),
// // //                   ],
// // //                 ),
// // //               ),
// // //               // Challenges Section
// // //               Container(
// // //                 margin: const EdgeInsets.only(bottom: 14, left: 18, right: 18),
// // //                 width: double.infinity,
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     Container(
// // //                       margin: const EdgeInsets.only(bottom: 5, left: 18, right: 18),
// // //                       width: double.infinity,
// // //                       child: Row(
// // //                         children: [
// // //                           const Expanded(
// // //                             child: Text(
// // //                               'Challenges',
// // //                               style: TextStyle(
// // //                                 color: Color(0xFF2F2F2F),
// // //                                 fontSize: 14,
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                           Row(
// // //                             children: [
// // //                               Container(
// // //                                 margin: const EdgeInsets.only(right: 12),
// // //                                 child: const Text(
// // //                                   'View All',
// // //                                   style: TextStyle(
// // //                                     color: Color(0xFF2F2F2F),
// // //                                     fontSize: 12,
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                               const Icon(
// // //                                 Icons.arrow_forward,
// // //                                 size: 24,
// // //                                 color: Color(0xFF2F2F2F),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                     Container(
// // //                       decoration: BoxDecoration(
// // //                         borderRadius: BorderRadius.circular(21),
// // //                         color: const Color(0xFFC0E9D1),
// // //                       ),
// // //                       padding: const EdgeInsets.symmetric(vertical: 8),
// // //                       width: double.infinity,
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           Container(
// // //                             margin: const EdgeInsets.only(left: 17),
// // //                             child: const Text(
// // //                               'Today’s Challenge!',
// // //                               style: TextStyle(
// // //                                 color: Color(0xFF2A7A70),
// // //                                 fontSize: 12,
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                           Container(
// // //                             margin: const EdgeInsets.only(left: 17),
// // //                             child: Row(
// // //                               children: [
// // //                                 Container(
// // //                                   margin: const EdgeInsets.only(right: 8),
// // //                                   child: Column(
// // //                                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                                     children: [
// // //                                       Container(
// // //                                         decoration: BoxDecoration(
// // //                                           borderRadius: BorderRadius.circular(15),
// // //                                           color: const Color(0xFF2A7A70),
// // //                                         ),
// // //                                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
// // //                                         margin: const EdgeInsets.only(bottom: 8),
// // //                                         child: const Text(
// // //                                           'Push Up 20x',
// // //                                           style: TextStyle(
// // //                                             color: Colors.white,
// // //                                             fontSize: 10,
// // //                                             fontWeight: FontWeight.bold,
// // //                                           ),
// // //                                         ),
// // //                                       ),
// // //                                       Container(
// // //                                         margin: const EdgeInsets.only(bottom: 11),
// // //                                         child: Column(
// // //                                           crossAxisAlignment: CrossAxisAlignment.start,
// // //                                           children: [
// // //                                             Container(
// // //                                               decoration: BoxDecoration(
// // //                                                 borderRadius: BorderRadius.circular(7),
// // //                                                 color: Colors.white,
// // //                                               ),
// // //                                               padding: const EdgeInsets.only(right: 79),
// // //                                               margin: const EdgeInsets.only(bottom: 4),
// // //                                               child: Container(
// // //                                                 decoration: BoxDecoration(
// // //                                                   borderRadius: BorderRadius.circular(7),
// // //                                                   color: const Color(0xFFFF88A4),
// // //                                                 ),
// // //                                                 width: 82,
// // //                                                 height: 9,
// // //                                               ),
// // //                                             ),
// // //                                             const Text(
// // //                                               '10/20 Complete',
// // //                                               style: TextStyle(
// // //                                                 color: Color(0xFF313131),
// // //                                                 fontSize: 10,
// // //                                               ),
// // //                                             ),
// // //                                           ],
// // //                                         ),
// // //                                       ),
// // //                                       Container(
// // //                                         decoration: BoxDecoration(
// // //                                           borderRadius: BorderRadius.circular(15),
// // //                                           color: Colors.white,
// // //                                         ),
// // //                                         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
// // //                                         child: Row(
// // //                                           children: [
// // //                                             const Icon(
// // //                                               Icons.play_arrow,
// // //                                               size: 19,
// // //                                               color: Color(0xFF255FD5),
// // //                                             ),
// // //                                             const SizedBox(width: 9),
// // //                                             Container(
// // //                                               padding: const EdgeInsets.only(bottom: 1),
// // //                                               child: const Text(
// // //                                                 'Continue',
// // //                                                 style: TextStyle(
// // //                                                   color: Color(0xFF255FD5),
// // //                                                   fontSize: 12,
// // //                                                   fontWeight: FontWeight.bold,
// // //                                                 ),
// // //                                               ),
// // //                                             ),
// // //                                           ],
// // //                                         ),
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                 ),
// // //                                 Container(
// // //                                   decoration: BoxDecoration(
// // //                                     color: Colors.green.withOpacity(0.5),
// // //                                   ),
// // //                                   child: SvgPicture.asset(
// // //                                     'assets/home/image1.png', // Updated image path
// // //                                     width: 152,
// // //                                     height: 85,
// // //                                     fit: BoxFit.fill,
// // //                                   ),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //               // Workout Routines Section
// // //               Container(
// // //                 margin: const EdgeInsets.only(bottom: 6, left: 18),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     Container(
// // //                       margin: const EdgeInsets.only(bottom: 12, left: 18),
// // //                       child: Row(
// // //                         children: [
// // //                           Container(
// // //                             margin: const EdgeInsets.only(right: 103),
// // //                             child: const Text(
// // //                               'Workout Routines',
// // //                               style: TextStyle(
// // //                                 color: Color(0xFF2F2F2F),
// // //                                 fontSize: 14,
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                           Row(
// // //                             children: [
// // //                               Container(
// // //                                 margin: const EdgeInsets.only(right: 12),
// // //                                 child: const Text(
// // //                                   'View All',
// // //                                   style: TextStyle(
// // //                                     color: Color(0xFF2F2F2F),
// // //                                     fontSize: 12,
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                               const Icon(
// // //                                 Icons.arrow_forward,
// // //                                 size: 24,
// // //                                 color: Color(0xFF2F2F2F),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                     Row(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Container(
// // //                           decoration: BoxDecoration(
// // //                             border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // //                             borderRadius: BorderRadius.circular(21),
// // //                           ),
// // //                           padding: const EdgeInsets.all(1),
// // //                           margin: const EdgeInsets.only(right: 19),
// // //                           child: Row(
// // //                             children: [
// // //                               Container(
// // //                                 decoration: BoxDecoration(
// // //                                   color: Colors.green.withOpacity(0.5),
// // //                                 ),
// // //                                 child: SvgPicture.asset(
// // //                                   'assets/home/image2.png',
// // //                                   width: 109,
// // //                                   height: 110,
// // //                                   fit: BoxFit.fill,
// // //                                 ),
// // //                               ),
// // //                               const SizedBox(width: 19),
// // //                               Column(
// // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                                 children: [
// // //                                   Container(
// // //                                     margin: const EdgeInsets.only(bottom: 3),
// // //                                     child: const Text(
// // //                                       'Sweat Starter',
// // //                                       style: TextStyle(
// // //                                         color: Color(0xFF2F2F2F),
// // //                                         fontSize: 14,
// // //                                         fontWeight: FontWeight.bold,
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                   Container(
// // //                                     margin: const EdgeInsets.only(bottom: 11),
// // //                                     child: const Text(
// // //                                       'Full Body',
// // //                                       style: TextStyle(
// // //                                         color: Color(0xFF666666),
// // //                                         fontSize: 10,
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                   InkWell(
// // //                                     onTap: () {
// // //                                       print('Lose Weight Pressed');
// // //                                     },
// // //                                     child: Container(
// // //                                       decoration: BoxDecoration(
// // //                                         border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// // //                                         borderRadius: BorderRadius.circular(21),
// // //                                       ),
// // //                                       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
// // //                                       margin: const EdgeInsets.only(bottom: 11),
// // //                                       child: const Text(
// // //                                         'Lose Weight',
// // //                                         style: TextStyle(
// // //                                           color: Color(0xFF255FD5),
// // //                                           fontSize: 8,
// // //                                           fontWeight: FontWeight.bold,
// // //                                         ),
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                   const Text(
// // //                                     'Difficulty: Medium',
// // //                                     style: TextStyle(
// // //                                       color: Color(0xFF666666),
// // //                                       fontSize: 10,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                         Container(
// // //                           decoration: BoxDecoration(
// // //                             color: Colors.green.withOpacity(0.5),
// // //                           ),
// // //                           child: SvgPicture.asset(
// // //                             'assets/home/image1.png',
// // //                             width: 88,
// // //                             height: 112,
// // //                             fit: BoxFit.fill,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //               // Bottom Image
// // //               Container(
// // //                 margin: const EdgeInsets.only(bottom: 11),
// // //                 width: double.infinity,
// // //                 child: Container(
// // //                   decoration: BoxDecoration(
// // //                     color: Colors.green.withOpacity(0.5),
// // //                   ),
// // //                   child: SvgPicture.asset(
// // //                     'assets/home/image2.png',
// // //                     width: 134,
// // //                     height: 5,
// // //                     fit: BoxFit.fill,
// // //                   ),
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _tabController.dispose();
// // //     super.dispose();
// // //   }
// // // }


// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import '../assessment/assessment_list.dart';
// // import '../appointment/appointment_list.dart';

// // class HomeShell extends StatefulWidget {
// //   final Widget? child;
// //   const HomeShell({Key? key, this.child}) : super(key: key);

// //   @override
// //   State<HomeShell> createState() => _HomeShellState();
// // }

// // class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
// //   late final TabController _tabController;
// //   final tabs = ['My Assessments', 'My Appointments'];

// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = TabController(length: tabs.length, vsync: this);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               // Top Header
// //               Container(
// //                 padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
// //                 margin: const EdgeInsets.only(top: 8, bottom: 7),
// //                 width: double.infinity,
// //                 child: Row(
// //                   children: [
// //                     const SizedBox(width: 10), // Spacing between icon and text
// //                     const Text(
// //                       'Hello Jane',
// //                       style: TextStyle(
// //                         color: Color(0xFF3B63D6),
// //                         fontSize: 24,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     const Spacer(),
// //                     const Icon(
// //                       Icons.account_circle_outlined, // Account icon on the right
// //                       size: 32,
// //                       color: Colors.black,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               // Toggle Buttons (replacing TabBar)
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //                 child: Container(
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(23),
// //                     color: const Color(0xFFF0F1F8),
// //                   ),
// //                   padding: const EdgeInsets.all(5),
// //                   margin: const EdgeInsets.only(bottom: 12),
// //                   width: double.infinity,
// //                   child: Row(
// //                     children: [
// //                       InkWell(
// //                         onTap: () {
// //                           _tabController.index = 0;
// //                           setState(() {});
// //                         },
// //                         child: Container(
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(23),
// //                             color: _tabController.index == 0 ? Colors.white : Colors.transparent,
// //                           ),
// //                           padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 11),
// //                           margin: const EdgeInsets.only(right: 21),
// //                           child: Text(
// //                             'My Assessments',
// //                             style: TextStyle(
// //                               color: _tabController.index == 0 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// //                               fontSize: 14,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                       Expanded(
// //                         child: InkWell(
// //                           onTap: () {
// //                             _tabController.index = 1;
// //                             setState(() {});
// //                           },
// //                           child: Container(
// //                             width: double.infinity,
// //                             child: Text(
// //                               'My Appointments',
// //                               style: TextStyle(
// //                                 color: _tabController.index == 1 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
// //                                 fontSize: 14,
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                               textAlign: TextAlign.center,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               // TabBarView with reduced size
// //               SizedBox(
// //                 height: MediaQuery.of(context).size.height * 0.4,
// //                 child: TabBarView(
// //                   controller: _tabController,
// //                   children: const [
// //                     AssessmentListScreen(),
// //                     AppointmentListScreen(),
// //                   ],
// //                 ),
// //               ),
// //               // Challenges Section
// //               Container(
// //                 margin: const EdgeInsets.only(bottom: 14, left: 18, right: 18),
// //                 width: double.infinity,
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Container(
// //                       margin: const EdgeInsets.only(bottom: 5, left: 18, right: 18),
// //                       width: double.infinity,
// //                       child: Row(
// //                         children: [
// //                           const Expanded(
// //                             child: Text(
// //                               'Challenges',
// //                               style: TextStyle(
// //                                 color: Color(0xFF2F2F2F),
// //                                 fontSize: 14,
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ),
// //                           Row(
// //                             children: [
// //                               Container(
// //                                 margin: const EdgeInsets.only(right: 12),
// //                                 child: const Text(
// //                                   'View All',
// //                                   style: TextStyle(
// //                                     color: Color(0xFF2F2F2F),
// //                                     fontSize: 12,
// //                                     fontWeight: FontWeight.bold,
// //                                   ),
// //                                 ),
// //                               ),
// //                               const Icon(
// //                                 Icons.arrow_forward,
// //                                 size: 24,
// //                                 color: Color(0xFF2F2F2F),
// //                               ),
// //                             ],
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     Container(
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(21),
// //                         color: const Color(0xFFC0E9D1),
// //                       ),
// //                       padding: const EdgeInsets.symmetric(vertical: 8),
// //                       width: double.infinity,
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Container(
// //                             margin: const EdgeInsets.only(left: 17),
// //                             child: const Text(
// //                               'Today’s Challenge!',
// //                               style: TextStyle(
// //                                 color: Color(0xFF2A7A70),
// //                                 fontSize: 12,
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ),
// //                           Container(
// //                             margin: const EdgeInsets.only(left: 17),
// //                             child: Row(
// //                               children: [
// //                                 Container(
// //                                   margin: const EdgeInsets.only(right: 8),
// //                                   child: Column(
// //                                     crossAxisAlignment: CrossAxisAlignment.start,
// //                                     children: [
// //                                       Container(
// //                                         decoration: BoxDecoration(
// //                                           borderRadius: BorderRadius.circular(15),
// //                                           color: const Color(0xFF2A7A70),
// //                                         ),
// //                                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
// //                                         margin: const EdgeInsets.only(bottom: 8),
// //                                         child: const Text(
// //                                           'Push Up 20x',
// //                                           style: TextStyle(
// //                                             color: Colors.white,
// //                                             fontSize: 10,
// //                                             fontWeight: FontWeight.bold,
// //                                           ),
// //                                         ),
// //                                       ),
// //                                       Container(
// //                                         margin: const EdgeInsets.only(bottom: 11),
// //                                         child: Column(
// //                                           crossAxisAlignment: CrossAxisAlignment.start,
// //                                           children: [
// //                                             Container(
// //                                               decoration: BoxDecoration(
// //                                                 borderRadius: BorderRadius.circular(7),
// //                                                 color: Colors.white,
// //                                               ),
// //                                               padding: const EdgeInsets.only(right: 79),
// //                                               margin: const EdgeInsets.only(bottom: 4),
// //                                               child: Container(
// //                                                 decoration: BoxDecoration(
// //                                                   borderRadius: BorderRadius.circular(7),
// //                                                   color: const Color(0xFFFF88A4),
// //                                                 ),
// //                                                 width: 82,
// //                                                 height: 9,
// //                                               ),
// //                                             ),
// //                                             const Text(
// //                                               '10/20 Complete',
// //                                               style: TextStyle(
// //                                                 color: Color(0xFF313131),
// //                                                 fontSize: 10,
// //                                               ),
// //                                             ),
// //                                           ],
// //                                         ),
// //                                       ),
// //                                       Container(
// //                                         decoration: BoxDecoration(
// //                                           borderRadius: BorderRadius.circular(15),
// //                                           color: Colors.white,
// //                                         ),
// //                                         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
// //                                         child: Row(
// //                                           children: [
// //                                             const Icon(
// //                                               Icons.play_arrow,
// //                                               size: 19,
// //                                               color: Color(0xFF255FD5),
// //                                             ),
// //                                             const SizedBox(width: 9),
// //                                             Container(
// //                                               padding: const EdgeInsets.only(bottom: 1),
// //                                               child: const Text(
// //                                                 'Continue',
// //                                                 style: TextStyle(
// //                                                   color: Color(0xFF255FD5),
// //                                                   fontSize: 12,
// //                                                   fontWeight: FontWeight.bold,
// //                                                 ),
// //                                               ),
// //                                             ),
// //                                           ],
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 ),
// //                                 SvgPicture.asset(
// //                                   'assets/home/image1.png',
// //                                   width: 152,
// //                                   height: 85,
// //                                   fit: BoxFit.fill,
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               // Workout Routines Section
// //               Container(
// //                 margin: const EdgeInsets.only(bottom: 6, left: 18),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Container(
// //                       margin: const EdgeInsets.only(bottom: 12, left: 18),
// //                       child: Row(
// //                         children: [
// //                           Container(
// //                             margin: const EdgeInsets.only(right: 103),
// //                             child: const Text(
// //                               'Workout Routines',
// //                               style: TextStyle(
// //                                 color: Color(0xFF2F2F2F),
// //                                 fontSize: 14,
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ),
// //                           Row(
// //                             children: [
// //                               Container(
// //                                 margin: const EdgeInsets.only(right: 12),
// //                                 child: const Text(
// //                                   'View All',
// //                                   style: TextStyle(
// //                                     color: Color(0xFF2F2F2F),
// //                                     fontSize: 12,
// //                                     fontWeight: FontWeight.bold,
// //                                   ),
// //                                 ),
// //                               ),
// //                               const Icon(
// //                                 Icons.arrow_forward,
// //                                 size: 24,
// //                                 color: Color(0xFF2F2F2F),
// //                               ),
// //                             ],
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     Row(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// //                             borderRadius: BorderRadius.circular(21),
// //                           ),
// //                           padding: const EdgeInsets.all(1),
// //                           margin: const EdgeInsets.only(right: 19),
// //                           child: Row(
// //                             children: [
// //                               SvgPicture.asset(
// //                                 'assets/home/image1.png',
// //                                 width: 109,
// //                                 height: 110,
// //                                 fit: BoxFit.fill,
// //                               ),
// //                               const SizedBox(width: 19),
// //                               Column(
// //                                 crossAxisAlignment: CrossAxisAlignment.start,
// //                                 children: [
// //                                   Container(
// //                                     margin: const EdgeInsets.only(bottom: 3),
// //                                     child: const Text(
// //                                       'Sweat Starter',
// //                                       style: TextStyle(
// //                                         color: Color(0xFF2F2F2F),
// //                                         fontSize: 14,
// //                                         fontWeight: FontWeight.bold,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                   Container(
// //                                     margin: const EdgeInsets.only(bottom: 11),
// //                                     child: const Text(
// //                                       'Full Body',
// //                                       style: TextStyle(
// //                                         color: Color(0xFF666666),
// //                                         fontSize: 10,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                   InkWell(
// //                                     onTap: () {
// //                                       print('Lose Weight Pressed');
// //                                     },
// //                                     child: Container(
// //                                       decoration: BoxDecoration(
// //                                         border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
// //                                         borderRadius: BorderRadius.circular(21),
// //                                       ),
// //                                       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
// //                                       margin: const EdgeInsets.only(bottom: 11),
// //                                       child: const Text(
// //                                         'Lose Weight',
// //                                         style: TextStyle(
// //                                           color: Color(0xFF255FD5),
// //                                           fontSize: 8,
// //                                           fontWeight: FontWeight.bold,
// //                                         ),
// //                                       ),
// //                                     ),
// //                                   ),
// //                                   const Text(
// //                                     'Difficulty: Medium',
// //                                     style: TextStyle(
// //                                       color: Color(0xFF666666),
// //                                       fontSize: 10,
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                         SvgPicture.asset(
// //                           'assets/home/image1.png',
// //                           width: 88,
// //                           height: 112,
// //                           fit: BoxFit.fill,
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               // Bottom Image
// //               Container(
// //                 margin: const EdgeInsets.only(bottom: 11),
// //                 width: double.infinity,
// //                 child: SvgPicture.asset(
// //                   'assets/home/image1.png',
// //                   width: 134,
// //                   height: 5,
// //                   fit: BoxFit.fill,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     _tabController.dispose();
// //     super.dispose();
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../assessment/assessment_list.dart';
// import '../appointment/appointment_list.dart';

// class HomeShell extends StatefulWidget {
//   final Widget? child;
//   const HomeShell({Key? key, this.child}) : super(key: key);

//   @override
//   State<HomeShell> createState() => _HomeShellState();
// }

// class _HomeShellState extends State<HomeShell> with SingleTickerProviderStateMixin {
//   late final TabController _tabController;
//   final tabs = ['My Assessments', 'My Appointments'];

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: tabs.length, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Top Header
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 13),
//                 margin: const EdgeInsets.only(top: 8, bottom: 7),
//                 width: double.infinity,
//                 child: Row(
//                   children: [
//                     const SizedBox(width: 10), // Spacing between icon and text
//                     const Text(
//                       'Hello Jane',
//                       style: TextStyle(
//                         color: Color(0xFF3B63D6),
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const Spacer(),
//                     const Icon(
//                       Icons.account_circle_outlined, // Account icon on the right
//                       size: 32,
//                       color: Colors.black,
//                     ),
//                   ],
//                 ),
//               ),
//               // Toggle Buttons (replacing TabBar)
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(23),
//                     color: const Color(0xFFF0F1F8),
//                   ),
//                   padding: const EdgeInsets.all(5),
//                   margin: const EdgeInsets.only(bottom: 12),
//                   width: double.infinity,
//                   child: Row(
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           _tabController.index = 0;
//                           setState(() {});
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(23),
//                             color: _tabController.index == 0 ? Colors.white : Colors.transparent,
//                           ),
//                           padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 11),
//                           margin: const EdgeInsets.only(right: 21),
//                           child: Text(
//                             'My Assessments',
//                             style: TextStyle(
//                               color: _tabController.index == 0 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: InkWell(
//                           onTap: () {
//                             _tabController.index = 1;
//                             setState(() {});
//                           },
//                           child: Container(
//                             width: double.infinity,
//                             child: Text(
//                               'My Appointments',
//                               style: TextStyle(
//                                 color: _tabController.index == 1 ? const Color(0xFF255FD5) : const Color(0xFF6B6B6B),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               // TabBarView with reduced size
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.4,
//                 child: TabBarView(
//                   controller: _tabController,
//                   children: const [
//                     AssessmentListScreen(),
//                     AppointmentListScreen(),
//                   ],
//                 ),
//               ),
//               // Challenges Section
//               Container(
//                 margin: const EdgeInsets.only(bottom: 14, left: 18, right: 18),
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(bottom: 5, left: 18, right: 18),
//                       width: double.infinity,
//                       child: Row(
//                         children: [
//                           const Expanded(
//                             child: Text(
//                               'Challenges',
//                               style: TextStyle(
//                                 color: Color(0xFF2F2F2F),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 margin: const EdgeInsets.only(right: 12),
//                                 child: const Text(
//                                   'View All',
//                                   style: TextStyle(
//                                     color: Color(0xFF2F2F2F),
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               const Icon(
//                                 Icons.arrow_forward,
//                                 size: 24,
//                                 color: Color(0xFF2F2F2F),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(21),
//                         color: const Color(0xFFC0E9D1),
//                       ),
//                       padding: const EdgeInsets.symmetric(vertical: 8),
//                       width: double.infinity,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.only(left: 17),
//                             child: const Text(
//                               'Today’s Challenge!',
//                               style: TextStyle(
//                                 color: Color(0xFF2A7A70),
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: const EdgeInsets.only(left: 17),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   margin: const EdgeInsets.only(right: 8),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(15),
//                                           color: const Color(0xFF2A7A70),
//                                         ),
//                                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
//                                         margin: const EdgeInsets.only(bottom: 8),
//                                         child: const Text(
//                                           'Push Up 20x',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 10,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         margin: const EdgeInsets.only(bottom: 11),
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Container(
//                                               decoration: BoxDecoration(
//                                                 borderRadius: BorderRadius.circular(7),
//                                                 color: Colors.white,
//                                               ),
//                                               padding: const EdgeInsets.only(right: 79),
//                                               margin: const EdgeInsets.only(bottom: 4),
//                                               child: Container(
//                                                 decoration: BoxDecoration(
//                                                   borderRadius: BorderRadius.circular(7),
//                                                   color: const Color(0xFFFF88A4),
//                                                 ),
//                                                 width: 82,
//                                                 height: 9,
//                                               ),
//                                             ),
//                                             const Text(
//                                               '10/20 Complete',
//                                               style: TextStyle(
//                                                 color: Color(0xFF313131),
//                                                 fontSize: 10,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(15),
//                                           color: Colors.white,
//                                         ),
//                                         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
//                                         child: Row(
//                                           children: [
//                                             const Icon(
//                                               Icons.play_arrow,
//                                               size: 19,
//                                               color: Color(0xFF255FD5),
//                                             ),
//                                             const SizedBox(width: 9),
//                                             Container(
//                                               padding: const EdgeInsets.only(bottom: 1),
//                                               child: const Text(
//                                                 'Continue',
//                                                 style: TextStyle(
//                                                   color: Color(0xFF255FD5),
//                                                   fontSize: 12,
//                                                   fontWeight: FontWeight.bold,
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SvgPicture.asset(
//                                   'assets/home/image1.png',
//                                   width: 152,
//                                   height: 85,
//                                   fit: BoxFit.fill,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Workout Routines Section
//               Container(
//                 margin: const EdgeInsets.only(bottom: 6, left: 18),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(bottom: 12, left: 18),
//                       child: Row(
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.only(right: 103),
//                             child: const Text(
//                               'Workout Routines',
//                               style: TextStyle(
//                                 color: Color(0xFF2F2F2F),
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 margin: const EdgeInsets.only(right: 12),
//                                 child: const Text(
//                                   'View All',
//                                   style: TextStyle(
//                                     color: Color(0xFF2F2F2F),
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               const Icon(
//                                 Icons.arrow_forward,
//                                 size: 24,
//                                 color: Color(0xFF2F2F2F),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
//                             borderRadius: BorderRadius.circular(21),
//                           ),
//                           padding: const EdgeInsets.all(1),
//                           margin: const EdgeInsets.only(right: 19),
//                           child: Row(
//                             children: [
//                               SvgPicture.asset(
//                                 'assets/home/image1.png',
//                                 width: 109,
//                                 height: 110,
//                                 fit: BoxFit.fill,
//                               ),
//                               const SizedBox(width: 19),
//                               Expanded( // Use Expanded to fill remaining width
//                                 child: Container(
//                                   width: double.infinity, // Ensure full width
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         margin: const EdgeInsets.only(bottom: 3),
//                                         child: const Text(
//                                           'Sweat Starter',
//                                           style: TextStyle(
//                                             color: Color(0xFF2F2F2F),
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         margin: const EdgeInsets.only(bottom: 11),
//                                         child: const Text(
//                                           'Full Body',
//                                           style: TextStyle(
//                                             color: Color(0xFF666666),
//                                             fontSize: 10,
//                                           ),
//                                         ),
//                                       ),
//                                       InkWell(
//                                         onTap: () {
//                                           print('Lose Weight Pressed');
//                                         },
//                                         child: Container(
//                                           decoration: BoxDecoration(
//                                             border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
//                                             borderRadius: BorderRadius.circular(21),
//                                           ),
//                                           padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
//                                           margin: const EdgeInsets.only(bottom: 11),
//                                           child: const Text(
//                                             'Lose Weight',
//                                             style: TextStyle(
//                                               color: Color(0xFF255FD5),
//                                               fontSize: 8,
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       const Text(
//                                         'Difficulty: Medium',
//                                         style: TextStyle(
//                                           color: Color(0xFF666666),
//                                           fontSize: 10,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SvgPicture.asset(
//                           'assets/home/image1.png',
//                           width: 88,
//                           height: 112,
//                           fit: BoxFit.fill,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               // Bottom Image
//               Container(
//                 margin: const EdgeInsets.only(bottom: 11),
//                 width: double.infinity,
//                 child: SvgPicture.asset(
//                   'assets/home/image1.png',
//                   width: 134,
//                   height: 5,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
// }


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
                              'Today’s Challenge!',
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
                                SvgPicture.asset(
                                  'assets/home/image1.png',
                                  width: 152,
                                  height: 85,
                                  fit: BoxFit.fill,
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
              // Workout Routines Section
              Container(
                margin: const EdgeInsets.only(bottom: 6, left: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12, left: 18),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 103),
                            child: const Text(
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2, // Allocate more space to the text container
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
                              borderRadius: BorderRadius.circular(21),
                            ),
                            padding: const EdgeInsets.all(1),
                            margin: const EdgeInsets.only(right: 19),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/home/image1.png',
                                  width: 109,
                                  height: 110,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(width: 19),
                                Expanded( // Allow text to take remaining space
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(bottom: 3),
                                        child: const Text(
                                          'Sweat Starter',
                                          style: TextStyle(
                                            color: Color(0xFF2F2F2F),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(bottom: 11),
                                        child: const Text(
                                          'Full Body',
                                          style: TextStyle(
                                            color: Color(0xFF666666),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print('Lose Weight Pressed');
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: const Color(0xFFCDCDCD), width: 1),
                                            borderRadius: BorderRadius.circular(21),
                                          ),
                                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                                          margin: const EdgeInsets.only(bottom: 11),
                                          child: const Text(
                                            'Lose Weight',
                                            style: TextStyle(
                                              color: Color(0xFF255FD5),
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Difficulty: Medium',
                                        style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1, // Allocate less space to the image
                          child: SvgPicture.asset(
                            'assets/home/image1.png',
                            width: 88,
                            height: 112,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Bottom Image
              Container(
                margin: const EdgeInsets.only(bottom: 11),
                width: double.infinity,
                child: SvgPicture.asset(
                  'assets/home/image1.png',
                  width: 134,
                  height: 5,
                  fit: BoxFit.fill,
                ),
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
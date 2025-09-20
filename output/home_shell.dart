import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text('Hello Jane', style: TextStyle(color: Color(0xFF3B63D6), fontWeight: FontWeight.bold)),
        actions: [IconButton(onPressed: () {}, icon: const CircleAvatar(child: Icon(Icons.person)))],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(color: const Color(0xFFF3F6FB), borderRadius: BorderRadius.circular(14)),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                labelColor: const Color(0xFF3B63D6),
                unselectedLabelColor: Colors.black54,
                tabs: tabs.map((t) => Tab(text: t)).toList(),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                AssessmentListScreen(),
                AppointmentListScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

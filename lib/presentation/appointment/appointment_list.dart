import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../domain/entities/appointment.dart';
import '../appointment/appointment_controller.dart';

class AppointmentListScreen extends ConsumerStatefulWidget {
  const AppointmentListScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<AppointmentListScreen> createState() => _AppointmentListScreenState();
}

class _AppointmentListScreenState extends ConsumerState<AppointmentListScreen> {
  DateTime _focused = DateTime.now();
  DateTime _selected = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final repo = ref.watch(appointmentControllerProvider);
    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime.now().subtract(const Duration(days: 365)),
          lastDay: DateTime.now().add(const Duration(days: 365)),
          focusedDay: _focused,
          selectedDayPredicate: (d) => isSameDay(d, _selected),
          onDaySelected: (selectedDay, focusedDay) => setState(() {
            _selected = selectedDay;
            _focused = focusedDay;
          }),
        ),
        Expanded(
          child: StreamBuilder<List<Appointment>>(
            stream: repo.watchAll(),
            builder: (context, snap) {
              if (!snap.hasData) return const Center(child: CircularProgressIndicator());
              final list = snap.data!;
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: list.length,
                itemBuilder: (ctx, i) {
                  final ap = list[i];
                  return Card(
                    child: ListTile(
                      title: Text(ap.title),
                      subtitle: Text(ap.description),
                      trailing: ElevatedButton(
                        onPressed: () async {
                          final userId = 'demo-user'; // Replace with real auth user id
                          await repo.bookAppointment(userId: userId, slotId: ap.id, date: _selected);
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Booked')));
                        },
                        child: const Text('Book'),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

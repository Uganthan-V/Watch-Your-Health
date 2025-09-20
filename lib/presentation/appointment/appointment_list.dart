
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/appointment.dart';
import '../appointment/appointment_controller.dart';

class AppointmentListScreen extends ConsumerStatefulWidget {
  const AppointmentListScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<AppointmentListScreen> createState() => _AppointmentListScreenState();
}

class _AppointmentListScreenState extends ConsumerState<AppointmentListScreen> {
  @override
  Widget build(BuildContext context) {
    final repo = ref.watch(appointmentControllerProvider);
    
    // Responsive card size based on screen width
    final screenWidth = MediaQuery.of(context).size.width;
    final availableWidth = screenWidth - 32 - 34; // padding + margins
    final cardSize = (availableWidth - 15) / 2; // spacing between cards
    
    return Column(
      children: [
        Expanded(
          child: StreamBuilder<List<Appointment>>(
            stream: repo.watchAll(),
            builder: (context, snap) {
              if (!snap.hasData) return const Center(child: CircularProgressIndicator());
              final list = snap.data!;
              
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: IntrinsicHeight(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: const Color(0xFFF5F5FA),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row 1: First two cards side by side
                        Container(
                          margin: const EdgeInsets.only(bottom: 15, left: 17, right: 17),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // First card (Cancer 2nd Opinion)
                              Expanded(
                                child: _buildAppointmentCard(
                                  context,
                                  list.isNotEmpty ? list[0] : null,
                                  'Cancer 2nd Opinion',
                                  'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/fd8krnpu_expires_30_days.png',
                                  const Color(0xFFC5D8FF),
                                ),
                              ),
                              const SizedBox(width: 15),
                              // Second card (Physiotherapy)
                              Expanded(
                                child: _buildAppointmentCard(
                                  context,
                                  list.length > 1 ? list[1] : null,
                                  'Physiotherapy Appointment',
                                  'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/83j0wl9g_expires_30_days.png',
                                  const Color(0xFFE9C5FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        // Row 2: Next two cards side by side
                        Container(
                          margin: const EdgeInsets.only(bottom: 20, left: 17, right: 17),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Third card (Fitness Appointment)
                              Expanded(
                                child: _buildAppointmentCard(
                                  context,
                                  list.length > 2 ? list[2] : null,
                                  'Fitness Appointment',
                                  'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/jwrauhh6_expires_30_days.png',
                                  const Color(0xFFFFD3C5),
                                ),
                              ),
                              const SizedBox(width: 15),
                              // Fourth card (Nutrition Consultation)
                              Expanded(
                                child: _buildAppointmentCard(
                                  context,
                                  list.length > 3 ? list[3] : null,
                                  'Nutrition Consultation',
                                  'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/83j0wl9g_expires_30_days.png',
                                  const Color(0xFFC5FFE9),
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        // View all button - Small and centered
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          child: Center(
                            child: InkWell(
                              onTap: () => print('View all Pressed'),
                              borderRadius: BorderRadius.circular(13),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: const Color(0xFF232F58),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24, 
                                  vertical: 8
                                ),
                                child: const Text(
                                  'View all',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAppointmentCard(
    BuildContext context,
    Appointment? appointment,
    String title,
    String imageUrl,
    Color backgroundColor,
  ) {
    // Responsive sizing based on available space
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = (screenWidth - 32 - 34 - 15) / 2; // Calculate available width
    
    // Responsive image size
    final imageSize = cardWidth > 150 ? 50.0 : 45.0;
    
    return InkWell(
      onTap: () => print('$title Pressed'),
      child: Container(
        height: cardWidth, // Square cards based on width
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: backgroundColor,
        ),
        padding: EdgeInsets.all(cardWidth > 150 ? 8 : 6), // Reduced padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min, // This ensures tight vertical sizing
          children: [
            // Logo/Image - Perfectly centered
            Container(
              width: imageSize,
              height: imageSize,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(
                  imageUrl,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(
                      Icons.local_hospital,
                      size: imageSize * 0.8,
                      color: Colors.grey[600],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: cardWidth > 150 ? 6 : 4), // Reduced spacing
            // Text - Perfectly centered with reduced padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: TextStyle(
                    color: const Color(0xFF222E58),
                    fontSize: cardWidth > 150 ? 13 : 11, // Slightly smaller font
                    fontWeight: FontWeight.bold,
                    height: 1.1, // Tighter line height
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
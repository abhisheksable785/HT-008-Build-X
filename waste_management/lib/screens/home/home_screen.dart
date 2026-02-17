import 'package:flutter/material.dart';
import '../pickup/schedule_pickup.dart';
import '../pickup/track_pickup.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WasteWise")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            _card(context, "Schedule Pickup", Icons.delete, const SchedulePickup()),
            _card(context, "Track Pickup", Icons.location_on, const TrackPickup()),
            _card(context, "Profile", Icons.person, const ProfileScreen()),
          ],
        ),
      ),
    );
  }

  Widget _card(context, title, icon, page) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.green),
            const SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../services/data_service.dart';

class TrackPickup extends StatelessWidget {
  const TrackPickup({super.key});

  @override
  Widget build(BuildContext context) {
    final pickups = DataService.pickups;

    return Scaffold(
      appBar: AppBar(title: const Text("Track Pickup")),
      body: ListView.builder(
        itemCount: pickups.length,
        itemBuilder: (context, index) {
          final p = pickups[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text("Waste: ${p.wasteType}"),
              subtitle: Text("Address: ${p.address}"),
              trailing: Text(p.status),
            ),
          );
        },
      ),
    );
  }
}

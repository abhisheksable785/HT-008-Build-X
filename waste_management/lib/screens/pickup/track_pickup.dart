import 'package:flutter/material.dart';

class TrackPickup extends StatelessWidget {
  const TrackPickup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Track Pickup")),
      body: const Center(
        child: Text(
          "Status: Driver on the way 🚛",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SchedulePickup extends StatelessWidget {
  const SchedulePickup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Schedule Pickup")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButtonFormField(
              items: ["Dry", "Wet", "Plastic"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) {},
              decoration: const InputDecoration(labelText: "Waste Type"),
            ),
            TextField(decoration: const InputDecoration(labelText: "Address")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Pickup Scheduled")),
                );
              },
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
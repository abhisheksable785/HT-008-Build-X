import 'package:flutter/material.dart';
import '../../models/pickup_model.dart';
import '../../services/data_service.dart';

class SchedulePickup extends StatefulWidget {
  const SchedulePickup({super.key});

  @override
  State<SchedulePickup> createState() => _SchedulePickupState();
}

class _SchedulePickupState extends State<SchedulePickup> {
  String wasteType = "Dry";
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Schedule Pickup")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownButtonFormField(
              value: wasteType,
              items: ["Dry", "Wet", "Plastic"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) => wasteType = v.toString(),
              decoration: const InputDecoration(labelText: "Waste Type"),
            ),
            TextField(
              controller: addressController,
              decoration: const InputDecoration(labelText: "Address"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                DataService.addPickup(
                  Pickup(
                    wasteType: wasteType,
                    address: addressController.text,
                    status: "Pending",
                  ),
                );

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

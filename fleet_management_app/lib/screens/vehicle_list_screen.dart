import 'package:flutter/material.dart';
import '../models/vehicle.dart';

class VehicleListScreen extends StatelessWidget {
  final List<Vehicle> vehicles;

  const VehicleListScreen({Key? key, required this.vehicles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicles'),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, index) {
          final vehicle = vehicles[index];
          return Card(
            color: Colors.grey[850],
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              title: Text(
                vehicle.licensePlate,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                vehicle.model,
                style: TextStyle(color: Colors.white70),
              ),
              trailing: Text(
                vehicle.status,
                style: TextStyle(
                  color: vehicle.status.toLowerCase() == 'active'
                      ? Colors.greenAccent
                      : Colors.redAccent,
                ),
              ),
              onTap: () {
                // TODO: Navigate to vehicle details
              },
            ),
          );
        },
      ),
    );
  }
}

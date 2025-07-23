import 'package:flutter/material.dart';
import '../models/driver.dart';

class DriverListScreen extends StatelessWidget {
  final List<Driver> drivers;

  const DriverListScreen({Key? key, required this.drivers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drivers'),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
        itemCount: drivers.length,
        itemBuilder: (context, index) {
          final driver = drivers[index];
          return Card(
            color: Colors.grey[850],
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              title: Text(
                driver.name,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'License: ${driver.licenseNumber}',
                style: TextStyle(color: Colors.white70),
              ),
              trailing: Text(
                driver.phoneNumber,
                style: TextStyle(color: Colors.white70),
              ),
              onTap: () {
                // TODO: Navigate to driver details
              },
            ),
          );
        },
      ),
    );
  }
}

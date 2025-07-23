import 'package:flutter/material.dart';
import '../models/maintenance.dart';

class MaintenanceScheduleScreen extends StatelessWidget {
  final List<Maintenance> maintenanceList;

  const MaintenanceScheduleScreen({Key? key, required this.maintenanceList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maintenance Schedule'),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
        itemCount: maintenanceList.length,
        itemBuilder: (context, index) {
          final maintenance = maintenanceList[index];
          return Card(
            color: Colors.grey[850],
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              title: Text(
                'Vehicle ID: ${maintenance.vehicleId}',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Scheduled Date: ${maintenance.scheduledDate.toLocal()}\nDescription: ${maintenance.description}',
                style: TextStyle(color: Colors.white70),
              ),
              trailing: Icon(
                maintenance.completed ? Icons.check_circle : Icons.pending,
                color: maintenance.completed ? Colors.greenAccent : Colors.orangeAccent,
              ),
              isThreeLine: true,
              onTap: () {
                // TODO: Navigate to maintenance details or mark complete
              },
            ),
          );
        },
      ),
    );
  }
}

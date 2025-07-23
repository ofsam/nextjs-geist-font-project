import 'package:flutter/material.dart';
import '../models/trip.dart';

class TripLogsScreen extends StatelessWidget {
  final List<Trip> trips;

  const TripLogsScreen({Key? key, required this.trips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Logs'),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
        itemCount: trips.length,
        itemBuilder: (context, index) {
          final trip = trips[index];
          return Card(
            color: Colors.grey[850],
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              title: Text(
                '${trip.origin} to ${trip.destination}',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Driver ID: ${trip.driverId}\nVehicle ID: ${trip.vehicleId}',
                style: TextStyle(color: Colors.white70),
              ),
              trailing: Text(
                '${trip.startTime.toLocal()} - ${trip.endTime.toLocal()}',
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
              isThreeLine: true,
              onTap: () {
                // TODO: Navigate to trip details
              },
            ),
          );
        },
      ),
    );
  }
}

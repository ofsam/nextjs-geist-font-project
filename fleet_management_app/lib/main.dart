import 'package:flutter/material.dart';
import 'models/vehicle.dart';
import 'models/driver.dart';
import 'models/trip.dart';
import 'models/maintenance.dart';
import 'models/user_role.dart';
import 'screens/vehicle_list_screen.dart';
import 'screens/driver_list_screen.dart';
import 'screens/trip_logs_screen.dart';
import 'screens/maintenance_schedule_screen.dart';
import 'screens/financial_reports_screen.dart';
import 'screens/investment_overview_screen.dart';

void main() {
  runApp(FleetManagementApp());
}

class FleetManagementApp extends StatefulWidget {
  @override
  _FleetManagementAppState createState() => _FleetManagementAppState();
}

class _FleetManagementAppState extends State<FleetManagementApp> {
  UserRole _currentUserRole = UserRole.admin;

  void _changeUserRole(UserRole role) {
    setState(() {
      _currentUserRole = role;
    });
  }

  // Sample data
  final List<Vehicle> _vehicles = [
    Vehicle(
      id: 'v1',
      licensePlate: 'ABC123',
      model: 'Toyota Prius',
      status: 'Active',
      lastMaintenanceDate: DateTime.now().subtract(Duration(days: 30)),
    ),
    Vehicle(
      id: 'v2',
      licensePlate: 'XYZ789',
      model: 'Ford Transit',
      status: 'Inactive',
      lastMaintenanceDate: DateTime.now().subtract(Duration(days: 90)),
    ),
  ];

  final List<Driver> _drivers = [
    Driver(
      id: 'd1',
      name: 'John Doe',
      licenseNumber: 'D1234567',
      phoneNumber: '555-1234',
    ),
    Driver(
      id: 'd2',
      name: 'Jane Smith',
      licenseNumber: 'D7654321',
      phoneNumber: '555-5678',
    ),
  ];

  final List<Trip> _trips = [
    Trip(
      id: 't1',
      vehicleId: 'v1',
      driverId: 'd1',
      startTime: DateTime.now().subtract(Duration(days: 1, hours: 3)),
      endTime: DateTime.now().subtract(Duration(days: 1)),
      origin: 'Warehouse A',
      destination: 'Client B',
    ),
  ];

  final List<Maintenance> _maintenanceList = [
    Maintenance(
      id: 'm1',
      vehicleId: 'v1',
      scheduledDate: DateTime.now().add(Duration(days: 15)),
      description: 'Oil change',
      completed: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Widget content;

    switch (_currentUserRole) {
      case UserRole.admin:
        content = VehicleListScreen(vehicles: _vehicles);
        break;
      case UserRole.maintenance:
        content = MaintenanceScheduleScreen(maintenanceList: _maintenanceList);
        break;
      case UserRole.finance:
        content = FinancialReportsScreen();
        break;
      case UserRole.investor:
        content = InvestmentOverviewScreen();
        break;
    }

    return MaterialApp(
      title: 'Fleet Management',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white70),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fleet Management - ${_currentUserRole.name.toUpperCase()}'),
          backgroundColor: Colors.grey[900],
        ),
        body: content,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.grey[850]),
                child: Text(
                  'Select Role',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                title: Text('Admin'),
                onTap: () {
                  _changeUserRole(UserRole.admin);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Maintenance'),
                onTap: () {
                  _changeUserRole(UserRole.maintenance);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Finance'),
                onTap: () {
                  _changeUserRole(UserRole.finance);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Investor'),
                onTap: () {
                  _changeUserRole(UserRole.investor);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

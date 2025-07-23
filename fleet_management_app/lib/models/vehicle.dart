class Vehicle {
  final String id;
  final String licensePlate;
  final String model;
  final String status;
  final DateTime lastMaintenanceDate;

  Vehicle({
    required this.id,
    required this.licensePlate,
    required this.model,
    required this.status,
    required this.lastMaintenanceDate,
  });
}

class Trip {
  final String id;
  final String vehicleId;
  final String driverId;
  final DateTime startTime;
  final DateTime endTime;
  final String origin;
  final String destination;

  Trip({
    required this.id,
    required this.vehicleId,
    required this.driverId,
    required this.startTime,
    required this.endTime,
    required this.origin,
    required this.destination,
  });
}

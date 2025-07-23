class Maintenance {
  final String id;
  final String vehicleId;
  final DateTime scheduledDate;
  final String description;
  final bool completed;

  Maintenance({
    required this.id,
    required this.vehicleId,
    required this.scheduledDate,
    required this.description,
    required this.completed,
  });
}

class RetailCheckIn {
  final int? id;
  final int retailerId;
  final double lat;
  final double long;
  final DateTime checkInTime;
  final bool isActive;

  RetailCheckIn({
    this.id,
    required this.retailerId,
    required this.lat,
    required this.long,
    required this.checkInTime,
    required this.isActive,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'retailer_id': retailerId,
      'checkin_time': checkInTime.toIso8601String(),
      'lat': lat,
      'long': long,
      'is_active': isActive ? 1 : 0,
    };
  }

  factory RetailCheckIn.fromMap(Map<String, dynamic> map) {
    return RetailCheckIn(
      id: map['id'],
      retailerId: map['retailer_id'],
      lat: map['lat'],
      long: map['long'],
      checkInTime: DateTime.parse(map['checkin_time']),
      isActive: map['is_active'] == 1,
    );
  }
}

class Retailer {
  final int? id;
  final String name;
  final String address;
  final String contact;
  final String? email;
  final String? gst;
  final String? ownerName;
  final String? type;
  final double lat;
  final double long;

  Retailer({
    this.id,
    required this.name,
    required this.address,
    required this.contact,
    this.email,
    this.gst,
    this.ownerName,
    this.type,
    required this.lat,
    required this.long,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'address': address,
    'contact': contact,
    'email': email,
    'gst': gst,
    'owner_name': ownerName,
    'type': type,
    'lat': lat,
    'long': long,
  };

  factory Retailer.fromMap(Map<String, dynamic> map) => Retailer(
    id: map['id'],
    name: map['name'],
    address: map['address'],
    contact: map['contact'],
    email: map['email'],
    gst: map['gst'],
    ownerName: map['owner_name'],
    type: map['type'],
    lat: map['lat'],
    long: map['long'],
  );
}
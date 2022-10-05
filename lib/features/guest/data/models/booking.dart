part of '_models.dart';

class Booking {
  Booking({
    required this.id,
    required this.checkIn,
    required this.checkOut,
    required this.status,
    required this.numberOfGuest,
    required this.value,
    required this.phoneNumber,
    required this.host,
    required this.profileName,
    required this.propertyUnit,
    required this.listingName,
  });

  Booking.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String;
    checkIn = DateTime.fromMillisecondsSinceEpoch(json['checkIn'] as int);
    checkOut = DateTime.fromMillisecondsSinceEpoch(json['checkOut'] as int);
    status = json['status'] as int;
    numberOfGuest = json['numberOfGuest'] as int;
    value = json['value'] as double;
    phoneNumber = json['phoneNumber'] as String;
    host = json['host'] as String;
    profileName = json['profileName'] as String;
    propertyUnit = json['propertyUnit'] as String;
    listingName = json['listingName'] as String;
  }

  late String id;
  late DateTime checkIn;
  late DateTime checkOut;
  late int status;
  late int numberOfGuest;
  late double value;
  late String phoneNumber;
  late String host;
  late String profileName;
  late String propertyUnit;
  late String listingName;
}

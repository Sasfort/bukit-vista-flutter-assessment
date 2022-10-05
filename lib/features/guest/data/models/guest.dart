part of '_models.dart';

class Guest {
  Guest({
    required this.id,
    required this.name,
    required this.city,
    required this.country,
    required this.createdAt,
    required this.email,
    required this.phoneNumber,
    required this.picture,
  });

  Guest.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String;
    name = json['name'] as String;
    city = json['city'] as String;
    country = json['country'] as String;
    createdAt = DateTime.fromMillisecondsSinceEpoch(json['createdAt'] as int);
    email = json['email'] as String;
    phoneNumber = json['phoneNumber'] as String;
    picture = json['picture'] as String;
  }

  late String id;
  late String name;
  late String city;
  late String country;
  late DateTime createdAt;
  late String email;
  late String phoneNumber;
  late String picture;
}

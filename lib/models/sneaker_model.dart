
import 'dart:convert';

List<Sneakers> sneakersFromJson(String str) => List<Sneakers>.from(json.decode(str).map((x) => Sneakers.fromJson(x)));

class Sneakers {
  final String id;
  final String name;
  final String oldPrice;
  final String newPrice;
  final String image;

  Sneakers({
    required this.id,
    required this.name,
    required this.oldPrice,
    required this.newPrice,
    required this.image,
  });

  factory Sneakers.fromJson(Map<String, dynamic> json) => Sneakers(
    id: json["id"],
    name: json["Name"],
    oldPrice: json["Old_price"],
    newPrice: json["New_price"],
    image: json["image"],
  );

}


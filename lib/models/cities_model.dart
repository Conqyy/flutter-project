class City {
  final String? name;
  final String? description;
  final String? image;

  City({this.name, this.description, this.image});

  factory City.fromjson(Map<String, dynamic> json) {
    return City(
      name: json['name'] ?? "no name",
      description: json['description'] ?? "no description",
      image: json['image'] ?? "assets/images/noImage.png",
    );
  }
}

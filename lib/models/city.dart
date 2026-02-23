class City {
  int? id;
  String? city;
  String? photo;

  City({this.id, this.city, this.photo});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    city = json['City'];
    photo = json['Photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['City'] = city;
    data['Photo'] = photo;
    return data;
  }
}

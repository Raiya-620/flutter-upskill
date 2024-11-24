class City {
  final String name;
  final String statecode;
  final String countrycode;

  City(
      {required this.name, required this.statecode, required this.countrycode});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      name: json["name"],
      statecode: json['state_code'],
      countrycode: json['country_code'],
    );
  }
}

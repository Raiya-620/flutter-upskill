final class Region {
  final int id;
  final String name;
  final String countrycode;
  final String statecode;

  Region({required this.id, required this.name, required this.countrycode, required this.statecode,});

  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
      id: json['id'],
      name: json['name'],
      countrycode: json['country_code'],
      statecode: json['state_code'],
    );
  }
}

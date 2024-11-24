final class Country {
  final int id;
  final String iso2;
  final String name;
 

  const Country({
    required this.id,
    required this.iso2,
    required this.name,
   
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json["id"],
      iso2: json["iso2"],
      name: json["name"],
     
    );
  }
}

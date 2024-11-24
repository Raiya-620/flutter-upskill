import "dart:convert";
import "package:http/http.dart" as http;
import "../entities/api_response.dart";
import "../utilities/env.dart";

class CountryService {
  final http.Client client;
  final url = "https://countries-states-and-cities.p.rapidapi.com/countries";

  const CountryService({required this.client});

  Future<ApiResponse> get() async {
    final response = await client.get(
      Uri.parse(url),
      headers: {"X-Rapidapi-Key": apiKey},
    );

    if (response.statusCode == 200) {
      return ApiResponse.fromJson(jsonDecode(response.body));
    }

    throw Exception("Failed to get countries data!");
  }
}
import 'dart:convert';

import 'package:demo_app/entities/api_response.dart';
import 'package:http/http.dart' as http;

// import '../utilities/env.dart';

class CityService {
  final http.Client client;
  CityService({required this.client});

  Future<ApiResponse> getCity(String countrycode, String statecode) async {
    final url =
        'https://countries-states-and-cities.p.rapidapi.com/cities?country=$countrycode&state=$statecode';

    final response = await client.get(
      Uri.parse(
        url,
      ),
      // headers: {"X-Rapidapi-Key": apiKey},
    );

    if (response.statusCode == 200) {
      return ApiResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Cities');
    }
  }
}

import 'dart:convert';

import 'package:demo_app/entities/api_response.dart';
import 'package:http/http.dart' as http;

// import '../utilities/env.dart';

class RegionService {
  final http.Client client;
  RegionService({required this.client});

  Future<ApiResponse> getRegions(String countryiso2) async {
    
    final url =
        'https://countries-states-and-cities.p.rapidapi.com/states?country=$countryiso2';
    final response = await client.get(
      Uri.parse(url),
      headers: {
        // "X-Rapidapi-Key": apiKey,
      },
    );

   
    if (response.statusCode == 200) {
      return ApiResponse.fromJson(
        jsonDecode(response.body),
      );
    }
    throw Exception('Failed to load Regions');
  }
}

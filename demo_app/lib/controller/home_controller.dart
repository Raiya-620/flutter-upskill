import 'package:demo_app/services/city_service.dart';
import 'package:demo_app/services/region_service.dart';

import '../models/city.dart';
import '../models/country.dart';
import '../models/region.dart';
import '../services/country_service.dart';
import 'package:http/http.dart' as http;

final homeController = HomeController(
    countryService: CountryService(
      client: http.Client(),
    ),
    regionService: RegionService(
      client: http.Client(),
    ),
    cityService: CityService(
      client: http.Client(),
    ));

final class HomeController {
  final CountryService countryService;
  final RegionService regionService;
  final CityService cityService;

  const HomeController(
      {required this.countryService,
      required this.regionService,
      required this.cityService});

  Future<List<Country>> getCountries() async {
    try {
      final response = await countryService.get();
      final countries = response.list.map((countryJson) {
        return Country.fromJson(countryJson);
      }).toList();

      return countries;
    } catch (e) {
      return [];
    }
  }

  Future<List<Region>> getStates(String countryIso2) async {
    try {
      final response = await regionService.getRegions(countryIso2);
      final regions = response.list.map((regionJson) {
        return Region.fromJson(regionJson);
      }).toList();
      return regions;
    } catch (e) {
      return [];
    }
  }

  Future<List<City>> getCities(String countrycode, String statecode) async {
    try {
      final response = await cityService.getCity(countrycode, statecode);
      final cities = response.list.map((cityJson) {
        return City.fromJson(cityJson);
      }).toList();
      return cities;
    } catch (e) {
      return [];
    }
  }
}

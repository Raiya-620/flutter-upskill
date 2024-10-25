import 'package:flutter_intro/models/location_fact.dart';

class Location {
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(
        'Arashiyama Bamboo Grove',
        'assets/images/flower.jpg',
        [
          LocationFact(
            'Summary',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
          ),
          LocationFact(
            'Lorem Ipsum ',
            'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
          ),
          LocationFact(
            'Where does it come form?',
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ',
          ),
        ],
      ),
    ];
  }
}

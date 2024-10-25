// Write a function that takes a map of names and their birth years:
//    Map<String, int> birthYears = {'Alice': 1990, 'Bob': 1985, 'Charlie': 1992};
// The function should return a new map where the keys are the birth years and the
// values are lists of names born in that year.
Map<String, int> newMap(Map<String, int> map) {
  Map<String, int> map1 = Map();
  map.forEach((key, value) {
    map1[key] = value;
  });
  Iterable<String> newKeys = map.keys;
  Iterable<int> newValues = map.values;
  for (int item in newValues) {
    if (newValues.contains(item)) {}
  }
  List<String> listNames = newKeys.toList();
  Map<int, String> newMap = Map.fromIterables(newValues, listNames);

  print(newValues);
  print('\n');
  print(listNames);
  print('\n');

  print(newMap);
  return map1;
}

void main() {
  Map<String, int> birthYears = {
    'Alice': 1990,
    'Bob': 1985,
    'Charlie': 1992,
    'Suraiya': 1990,
    'Rashida': 1990
  };
  newMap(birthYears);
}

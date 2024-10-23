Map<String, int> map = {'apple': 5, 'grapes': 6, 'straw-berry': 11};

void main() {
  map.forEach((key, value) {
    print('$key: $value');
  });
  print('\n');

  if (map.containsKey('apple')) {
    print('this statement is true');
  } else {
    print('this statement is not true');
  }
  print('\n');
  print(map['apple']);

  map['apple'] = 10;

  print('\n');
  print('the updated value of apple is ${map['apple']}');

  print('\n');
  int? removedValue = map.remove('apple');
  print('the remove value is $removedValue');
  print('\n');
  List<String> keys = ['banana', 'water-melon', 'guava'];

  List<int> values = [6, 11, 5];
  Map<String, int> customMap = Map.fromIterables(keys, values);
  print(customMap);
  Map<String, double> map2 = Map.castFrom(map);
  print('\n');
  print(map2);
  print('\n');

  int mapLength = map.length;
  Iterable<String> mapKeys = map.keys;
  print(' the length of the map is $mapLength');
  print(' the keys in the map are $mapKeys');
}

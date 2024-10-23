void main() {
  Map<String, String> fruits = Map(); // syntax for creating an empty map
  fruits['apple'] = 'red';
  fruits['orange'] = 'orange';

  fruits.update('apple', (value) => 'greeb');
  print(fruits);
  print('\n');

  print(fruits.containsKey('apple'));
  print('\n');

//   print(fruits['apple']);

//   print(fruits());
//   fruits();
  for (String key in fruits.keys) {
    print(key);
  }
  print('\n');
  for (String value in fruits.values) {
    print(value);
  }
  print('\n');
  fruits.forEach((key, value) => print('key: $key and value: $value'));
}

// Map<String, String> fruits() {
//   return <String, String>{
//     'apple': ' apple',
//     'guave': 'green',
//     'orange': 'orange'
//   };
// }

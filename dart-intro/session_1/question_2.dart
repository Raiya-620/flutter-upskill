List<String> usernames = ['alice', 'bob', 'charlie'];

Map<String, int> names =
    Map.fromIterable(usernames, key: (k) => k, value: (v) => v.length);

void main() {
  print(names);
}

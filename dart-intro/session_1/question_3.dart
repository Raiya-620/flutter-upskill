Map<String, Map<String, String>> library = {
  'Fiction': {'1984': 'George Orwell', 'Brave New World': 'Aldous Huxley'},
  'Non-Fiction': {'Sapiens': 'Yuval Noah Harari', 'Educated': 'Tara Westover'}
};

// library.entries = [
// MapEntry(),
// MapEntry()
// ];

void main() {
  print(retrieveAuthor(library, bookTitle: ""));
}

String retrieveAuthor(
  Map<String, Map<String, String>> library, {
  required String bookTitle,
}) {
  for (final MapEntry(:value) in library.entries) {
    for (var MapEntry(:value) in value.entries) {
      print(value);
    }
    // if (value.containsKey(bookTitle)) {
    //   return value[bookTitle]!;
    // }
  }

  return '';
}

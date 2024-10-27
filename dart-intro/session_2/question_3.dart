// Write a function that takes a map of names and their birth years:
//    Map<String, int> birthYears = {'Alice': 1990, 'Bob': 1985, 'Charlie': 1992};
// The function should return a new map where the keys are the birth years and the
// values are lists of names born in that year.
Map<int, List<String>> groupByYearsNames(Map<String, int> birthYears) {
  Map<int, List<String>> newMap = {};

  birthYears.forEach((key, value) {
    if (newMap.containsKey(value)) {
      newMap[value]!.add(key);
    } else {
      newMap[value] = [key];
    }
  });
  return newMap;
}

void main() {
  Map<String, int> birthYears = {
    'Alice': 1990,
    'Bob': 1985,
    'Charlie': 1992,
    'Suraiya': 1990,
    'Rashida': 1990
  };
  print(groupByYearsNames(birthYears));
}

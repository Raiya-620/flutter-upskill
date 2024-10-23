// Write a function that takes two maps of item quantities (Map<String, int>)
// and merges them into a single map. If an item appears in both maps, the resulting
// quantity should be the sum of the quantities from both maps. For example:
//    Map<String, int> warehouse1 = {'apples': 50, 'bananas': 30};
//    Map<String, int> warehouse2 = {'apples': 20, 'oranges': 40};

Map<String, int> MergeAllMaps(Map<String, int> map1, Map<String, int> map2) {
  Map<String, int> AllMaps = Map();

  map1.forEach(
    (key, value) {
      AllMaps[key] = value;
    },
  );
  map2.forEach(
    (key, value) {
      if (AllMaps.containsKey(key)) {
        AllMaps[key] = (AllMaps[key]! + value);
      } else {
        AllMaps[key] = value;
      }
    },
  );
  return AllMaps;
}

void main() {
  Map<String, int> warehouse1 = {'apples': 50, 'bananas': 30};
  Map<String, int> warehouse2 = {'apples': 20, 'oranges': 40};

  print(MergeAllMaps(warehouse1, warehouse2));
}

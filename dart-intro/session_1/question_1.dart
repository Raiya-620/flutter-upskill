Map<String, int> athleteScores = {'John': 85, 'Emma': 92, 'Liam': 76};

void main() {
  int max = 0;
  for (int value in athleteScores.values) {
    if (value > max) {
      max = value;
    }
  }
  print(max);
  var key = athleteScores.keys.firstWhere((k) => athleteScores[k] == max);
  print('$key $max');
}

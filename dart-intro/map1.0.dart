Map<String, dynamic> details() {
  return <String, dynamic>{
    'name': 'Suraiya',
    'age': 80,
    'favorate-food': 'waakye'
  };
}

void main() {
  print(User.fromJson(details()));
}

class User {
  final String name;
  final int age;
  final String favorateFood;

  User({required this.name, required this.age, required this.favorateFood});

  factory User.fromJson(Map<String, dynamic> details) {
    return User(
        name: details['name'],
        age: details['age'],
        favorateFood: details['favorate-food']);
  }
}

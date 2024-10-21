void main() {
  List<int> numbers = [1, 44, 5, 9];
  var powNumbers = numbers.map((num) => num * 2);
//   print(powNumbers);

  List<String> names = ['Max', 'Jennifer', 'Fati'];
  var custNames = names.map((name) => name.length);
  print(custNames);
}

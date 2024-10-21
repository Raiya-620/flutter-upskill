void main() {
  findPerimeter();
  int result = findArea(3, 6);
  print('the area is $result');
}

void findPerimeter() {
  int length = 5;
  int breadth = 2;
  int perimeter = 2 * (length + breadth);
  print('the perimeter is $perimeter');
}

int findArea(int length, int breadth) {
  int area = length * breadth;
  return area;
}

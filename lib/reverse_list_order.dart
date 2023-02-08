void reverseList(List<int> list) {
  var newList = list.reversed;
  print(newList);
}

Iterable<int> reverseList2(List<int> list) {
  var newList = list.reversed;
  return newList;
}

void main() {
  var numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  reverseList(numberList);

  print(reverseList2(numberList));
}

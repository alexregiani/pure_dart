int positiveSum(List<int> arr) {
  int result = 0;
  for (int i in arr) {
    if (i > 0) {
      result += i;
    }
  }
  return result;
}

void main() {
  List<int> numbers = [1, 0, -1, 3, 5, -20, 20];

  print(positiveSum(numbers));
}

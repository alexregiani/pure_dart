int positiveSum(List<int> arr) {
  int result = 0;
  for (int i in arr) {
    if (i > 0) {
      result += i;
    }
  }
  return result;
}

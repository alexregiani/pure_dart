// Essa funcao nao funciona como esperado.
// Dart tudo eh passado por valor (passed by value)
// significa que o intList eh uma copia do `numbers do main()`
// entao se modifico o intList dentro dessa funcao, nao afeta a
// variavel `numbers` que ta no main.
// Entao vai printar [1, 2, 3, 4, 5, 6, 7, 8] do mesmo jeito
void numberIterate(List<int> intList) {
  for (var i in intList) {
    i = i * 2;
  }

  // no return, so return will be `null`
}

// Agora vamos criar uma funcao que realmente retorna o valor modificado
List<int> numberIterateFixed(List<int> intList) {
  List<int> newList = []; // buffer

  for (var i in intList) {
    newList.add(i * 2); // fill buffer
  }

  return newList; // return buffer
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  numberIterate(numbers);
  print(numbers);

  numbers =
      numberIterateFixed(numbers); // re-assign existing variavle to new value
  print(numbers);
}

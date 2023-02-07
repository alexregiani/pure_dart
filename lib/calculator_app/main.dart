import 'dart:io';

double add(double number1, double number2) {
  double result;
  result = number1 + number2;
  return result;
}

double subtract(double number1, double number2) {
  double result;
  result = number1 - number2;
  return result;
}

double divide(double number1, double number2) {
  double result;
  result = number1 / number2;
  return result;
}

double multiply(double number1, double number2) {
  double result;
  result = number1 * number2;
  return result;
}

void main() {
  double number1 = 0;
  double number2 = 0;
  double result = 0;

  stdout.write(
      'Welcome to calculator, choose 2 numbers to perform the calculation on:\n');

  stdout.write('choose first number:\n');
  number1 = double.parse(stdin.readLineSync()!);

  stdout.write('choose second number:\n');
  number2 = double.parse(stdin.readLineSync()!);

  stdout.write(
      'Choose your operation: (a)dd, (s)ubtract, (d)ivide or (m)ultiply\n');

  var operationChoice = stdin.readLineSync();

  if (operationChoice == 'a') {
    result = add(number1, number2);
  } else if (operationChoice == 's') {
    result = subtract(number1, number2);
  } else if (operationChoice == 'd') {
    result = divide(number1, number2);
  } else if (operationChoice == 'm') {
    result = multiply(number1, number2);
  }

  stdout.write(result);
}

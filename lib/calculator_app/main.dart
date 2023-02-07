import 'dart:io';

import 'functions/add.dart';
import 'functions/divide.dart';
import 'functions/multiply.dart';
import 'functions/subtract.dart';

void main() {
  while (true) {
    double number1 = 0;
    double number2 = 0;
    double result = 0;

    stdout.write(
        '\nWelcome to calculator, choose 2 numbers to perform the calculation on:\n');



    stdout.write(
        '\nChoose your operation: (a)dd, (s)ubtract, (d)ivide or (m)ultiply\n');

    var operationChoice = stdin.readLineSync();

    if (operationChoice == 'a') {
      result = add(number1, number2);
    } else if (operationChoice == 's') {
      result = subtract(number1, number2);
    } else if (operationChoice == 'd') {
      result = divide(number1, number2);
    } else if (operationChoice == 'm') {
      result = multiply(number1, number2);
    } else {
      stdout.write('wrong input, try again');
    }

    stdout.write('$result');
  }
}

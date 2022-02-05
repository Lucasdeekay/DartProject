import 'dart:io';

void main(List<String> args) {
  var result = calculator();
  print(result);
}

double calculator() {
  var operator;
  print('Enter Number: ');
  var num = double.parse(stdin.readLineSync()!);
  do {
    print('Input Operator');
    operator = stdin.readLineSync();
    switch (operator) {
      case '+':
        print('Enter Number: ');
        var number = double.parse(stdin.readLineSync()!);
        num += number;
        break;
      case '-':
        print('Enter Number: ');
        var number = double.parse(stdin.readLineSync()!);
        num -= number;
        break;
      case '=':
        break;
      default:
        print('Invalid Input');
        break;
    }
  } while (operator != "=");

  return num;
}

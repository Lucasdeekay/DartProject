import 'dart:io';

void main(List<String> args) {
  Calculator.run();
}

double promptNumInput(String text) {
  double userInput = 0;
  while (true) {
    try{
      print(text);
      userInput = double.parse(stdin.readLineSync()!);
      break;
    }
    catch (e){
      print("Error: $e");
    }
  }
  return userInput;
}

String promptUserInput(String text) {
  print(text);
  String userInput = stdin.readLineSync()!;
  return userInput;
}

double calculate(String op, double num) {
  switch (op) {
    case '+':
      var number = promptNumInput("Enter Number: ");
      num += number;
      break;
    case '-':
      var number = promptNumInput("Enter Number: ");
      num -= number;
      break;
    case '*':
      var number = promptNumInput("Enter Number: ");
      num *= number;
      break;
    case '/':
      var number = promptNumInput("Enter Number: ");
      num /= number;
      break;
    case '%':
      var number = promptNumInput("Enter Number: ");
      num %= number;
      break;
    case '=':
      break;
    default:
      print("Invalid Input");
      break;
  }

  return num;
}

class Calculator {
  double a = 0;
  double b = 0;

  Calculator(double a, double b) {
    this.a = a;
    this.b = b;
  }

  double add() {
    return this.a + this.b;
  }

  double subtract() {
    return this.a - this.b;
  }

  double multiply() {
    return this.a * this.b;
  }

  double divide() {
    return this.a / this.b;
  }

  static void run() {
    var number = promptNumInput("Enter Number:");
    var operator;

    do {
      operator = promptUserInput("Enter Operator:");
      number = calculate(operator, number);
    } while (operator != "=");

    print("Answer = $number");
  }
}

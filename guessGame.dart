import 'dart:math';
import 'dart:io';

void main() {
  guessGame();
}

int getRandomNumber() {
  var random = Random();
  return random.nextInt(8) + 1;
}

int prompt(String message) {
  var guess;
  while (true) {
    try {
      print(message);
      guess = int.parse(stdin.readLineSync()!);
      break;
    } on Exception catch (e) {
      print("Error: $e");
    }
  }

  return guess;
}

void guessGame() {
  var count = 3;
  do {
    var secret_number = getRandomNumber();
    var guess = prompt("Guess a number:");

    if (guess > secret_number) {
      print("Too high");
      print("You have $count guess left\nSecret number: $secret_number");
      count--;
    } else if (guess < secret_number) {
      print("Too low");
      print("You have $count guess left\nSecret number: $secret_number");
      count--;
    } else if (guess == secret_number) {
      print("You win");
      break;
    } else {
      print("Invalid Input");
    }
  } while (count > 0);
}

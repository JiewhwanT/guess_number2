import 'dart:io';
import 'game.dart';


void main(){

  stdout.write('Please Enter maximum: '); // print
  var num = stdin.readLineSync(); //รับข้อมูลที่เราพิมพ์
  var number = int.tryParse(num!); // แปลง String ไปเป็น int

  var game = Game(maxRandom: number!);
  int result = 0;

  do {

    stdout.write('Please guess the number between 1 and $number : ');
    var input = stdin.readLineSync(); //รับข้อมูลที่เราพิมพ์
    var guess = int.tryParse(input!); //แปลง String ไปเป็น int

    if (guess == null) {
      continue;
    }

    result = game.doGuess(guess);

  }
  while (result != 1);

}



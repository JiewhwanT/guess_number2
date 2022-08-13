import 'dart:io';
import 'dart:math';
class Game {
  int answer = 0; //instant field ตัวแปรระดับ class
  int count = 1; //

  Game({int maxRandom = 100}) {
    var r = Random();
    answer = r.nextInt(maxRandom) + 1;
    print('คำตอบคือ $answer');

  }


  int doGuess(int num) {
    if (num > answer) {
      print("➜ $num is Too Hight ▲");
      count = count+1;
      return 0;
    } else if (num < answer) {
      print("➜ $num is Too Low ▼");
      count = count+1;
      return 0;
    } else {
      count = count + 1;
      print("➜ $num is Too Correct ❤, total guess is $count");
      print("Play Again? (Y/์N)");
      var again = stdin.readLineSync();
      if(again == 'Y'||again == 'y'){
        return 0;
      }
      else{
        return 1;
      }
    }
  }

}







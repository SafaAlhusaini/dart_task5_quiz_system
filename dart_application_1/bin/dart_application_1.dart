import 'dart:io';

void main() {
  double score = 0;
  Map q1 = {"q": "4 + 4 ?", "Ans": "8", "marke": 5};
  Map q2 = {"q": "5 + 4 ?", "Ans": "9", "marke": 5};
  Map q3 = {"q": "6 + 4 ?", "Ans": "10", "marke": 5};
  Map q4 = {"q": "7 + 4 ?", "Ans": "11", "marke": 5};

  List<Map> quiz = [q1, q2, q3, q4];
  for (var i in quiz) {
    print(i["q"]);
    print("--------------------");
    String? ans = stdin.readLineSync()!;

    if (ans == i["Ans"]) {
      print("correct");
      score = score + i["marke"];
    } else {
      print("incorrect");
    }
  }
  print(score);
}

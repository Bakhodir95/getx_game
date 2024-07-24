import 'package:get/get.dart';

class PuzzleController extends GetxController {
  RxInt rightAnswers = 0.obs;
  RxInt wrongAttempts = 0.obs;
  RxInt count = 0.obs;

  void right() {
    rightAnswers++;
  }

  void wrong() {
    wrongAttempts++;
  }

  final RxList<Map<String, String>> flutterQuestions = [
    {
      "What are the main differences between stateful and stateless widgets in Flutter?":
          "State"
    },
    {"How do you manage state in Flutter?": "Provider"},
    {"What is the purpose of a Flutter provider?": "Dependency"},
    {"How does the Flutter widget tree work?": "Hierarchy"},
    {
      "What is the difference between hot reload and hot restart in Flutter?":
          "Reload"
    },
    {"How do you handle navigation in Flutter?": "Routes"},
    {"How do you use animations in Flutter?": "Tween"},
    {"How do you debug a Flutter application?": "Debugger"}
  ].obs;

  String alphabet = "abdefghijklmopqrstuvxyzc";
}

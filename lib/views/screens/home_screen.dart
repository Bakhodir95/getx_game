import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_game/controllers/puzzle_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final _puzzleController = Get.put(PuzzleController());

class _HomeScreenState extends State<HomeScreen> {
  final randomQuestionMap = _puzzleController.flutterQuestions[
      Random().nextInt(_puzzleController.flutterQuestions.length)];

  @override
  Widget build(BuildContext context) {
    final questionText = randomQuestionMap.keys.first;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green, width: 4),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star_border,
                        color: Colors.amber,
                      ),
                      const Gap(10),
                      Text(rightAnswers.toString()),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 4),
                  ),
                  child: Row(
                    children: [
                      Text(count.toString()),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue, width: 4),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      const Gap(10),
                      Text(rightAnswers.toString()),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              randomQuestionMap.keys.first.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                randomQuestionMap.values.last.length,
                (context) => InkWell(
                  onTap: () {},
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: const Center(
                      child: Text(' ', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                10,
                (context) => Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 80.0,
                      height: 50.0,
                      margin: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: const Center(
                        child: Text(' ', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            FilledButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text("Next"))
          ],
        ),
      ),
    );
  }
}

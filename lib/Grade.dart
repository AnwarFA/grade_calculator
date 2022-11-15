import 'package:flutter/material.dart';

class Grade extends StatelessWidget {
  Grade({Key? Key}) : super(key: Key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("The GPA calculater Below"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: "Type your score",
                  prefixIcon: Icon(Icons.percent),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  int? grade = int.tryParse(controller.text);

                  if (grade! >= 90) {
                    print("A");
                  } else if (grade >= 80) {
                    print("B");
                  } else if (grade >= 70) {
                    print("c");
                  } else if (grade >= 60) {
                    print("D");
                  } else {
                    print("F");
                  }
                },
                child: Text("Calculate"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

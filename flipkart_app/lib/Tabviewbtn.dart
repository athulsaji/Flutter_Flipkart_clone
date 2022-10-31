import 'package:flutter/material.dart';

class Tview extends StatelessWidget {
  const Tview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.symmetric(vertical: 8),
          height: 52,
          width: double.infinity,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 230, 223, 223)),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      "Best of Electronics",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Best of Electronics",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("VIEW ALL ")),
            ],
          ),
        ));
  }
}

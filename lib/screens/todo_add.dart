import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  final TextEditingController _inputController = TextEditingController();
  List bos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 40),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          TextField(
            controller: _inputController,
            decoration: const InputDecoration(hintText: "Giriniz"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  bos.add(_inputController.text);
                  _inputController.text = "";
                });
              },
              child: const Text("Ekle")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  bos.clear();
                });
              },
              child: const Text("Hepsini Sil")),
        ],
      ),
    ));
  }
}

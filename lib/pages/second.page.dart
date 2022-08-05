
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  final  name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("2nd page"),
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 TextField(
                  controller: name,
                ),
                TextButton(
                    onPressed: ()async {
                    context.router.pop(name.text);
                     
                    },
                    child: const Text("Go back to 1st page")),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/cubit/counter_cubit.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final firstController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   final counter = context.watch<CounterCubit>().state.counter;
    return Scaffold(
        appBar: AppBar(
          title: const Text("1st page"),
        ),
        body: Container(
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                 Text(counter.toString(),style: TextStyle(fontSize: MediaQuery.of(context).size.height*.09),),
                // TextField(
                //   controller: firstController,
                //   onSubmitted: (value) {
                //     setState(() {
                //       value;
                //     });
                //   },
                // ),
                Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: ()async {
                        // var res = await context.router.push(const SecondRoute());
                        // // log(res.toString());

                        context.read<CounterCubit>().decrement();
                        },
                        child: const Text("Decrement")),
                         TextButton(
                        onPressed: ()async {
                        // var res = await context.router.push(const SecondRoute());
                        // // log(res.toString());

                        context.read<CounterCubit>().increment();
                        },
                        child: const Text("Increment")),
                        
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

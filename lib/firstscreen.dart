import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:incrementcubitcommonroutesapp/firstcubit.dart';
import 'package:incrementcubitcommonroutesapp/secondcubit.dart';
import 'package:incrementcubitcommonroutesapp/secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("First Screen"),
          actions: [
            IconButton(onPressed: () {
              Navigator.pushNamed(context,"/second",arguments: {
                "title":"Dynamic Title"
              });
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) =>
              //         BlocProvider(
              //           create: (context) => SecondCubit(),
              //           child: SecondScreen(),
              //         ))
              // );
            }, icon: Icon(Icons.arrow_forward))
          ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        BlocProvider.of<FirstCubit>(context).increment();
      },
      child: Icon(Icons.add),
      ),
      body: BlocBuilder<FirstCubit, int>(
        builder: (context, state) {
          return Center(
              child: Text(state.toString(), style: TextStyle(fontSize: 50)));
        },
      ),
    );
  }
}